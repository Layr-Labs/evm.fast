import InitECandidate.Solver.MemSafe.Helpers.SeqN

set_option autoImplicit false

/-!
# Locals-only code, and `G` under an allocator move

* `pureB W p`: `p` is built from `skip`, local assignments, `var` declarations, sequences and
  conditionals, and never assigns or declares a name of `W`. `hoareG_pure`: such code completes
  normally (when good), keeps the footprint and every locals invariant that is stable under
  updates and restorations of names outside `W`.
* `AllocGlobs C`: the allocator globals are neither typed nor protected. `G_alloc`: `G` survives
  an allocator move (ordered, monotone) with memory changed only in cells unallocated before and
  no other global changed.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Locals-only code -/

def pureB (W : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local x _ => !W.contains x
  | .dec x _ _ b => !W.contains x && pureB W b
  | .seq a b => pureB W a && pureB W b
  | .ite _ a b => pureB W a && pureB W b
  | _ => false

/-- A locals invariant stable under updates and restorations of names outside `W`. -/
def Stable (W : List MlS) (J : Locals → Prop) : Prop :=
  ∀ m x, W.contains x = false → J m →
    (∀ v, J (m.update (x, v))) ∧ ∀ old, J (m.resVarEq (x, old))

/-- Fixed lookups of the names of `W` are stable. -/
theorem stable_fixed {W : List MlS} {xs : List (MlS × ValueHOL 64)} (hW : ∀ q ∈ xs, q.1 ∈ W) :
    Stable W (fun m => ∀ q ∈ xs, m.lookup q.1 = some q.2) := by
  intro m x hx hJ
  have hne : ∀ q ∈ xs, x ≠ q.1 := by
    intro q hq h
    subst h
    have := hW q hq
    simp at hx
    exact hx this
  refine ⟨fun v q hq => ?_, fun old q hq => ?_⟩
  · rw [lookup_update_ne _ _ (hne q hq)]; exact hJ q hq
  · rw [lookup_resVarEq_ne _ _ (hne q hq)]; exact hJ q hq

theorem hoareG_pure {W : List MlS} {J : Locals → Prop} (hJ : Stable W J)
    {Rf : BitVec 64 → Prop} {s0 : State σ} :
    ∀ p : ProgHOL 64, pureB W p = true → HoareG σ X (LPre Rf s0 J) p (LN Rf s0 J)
  | .skip, _ => hoareG_skip fun _ _ hp => ⟨rfl, hp⟩
  | .assign .local x e, h => by
      have hx : W.contains x = false := by simpa [pureB] using h
      exact hoareG_assignN fun s _ hL v _ => (hJ _ x hx hL).1 v
  | .assign .global _ _, h => by simp [pureB] at h
  | .dec x sh e b, h => by
      simp only [pureB, Bool.and_eq_true, Bool.not_eq_true'] at h
      refine hoareG_decN (L' := fun _ => J) (fun s _ hL v _ _ => ?_)
        (fun m m' _ h' => (hJ m' x h.1 h').2 _)
      exact hoareG_preN (hoareG_pure hJ b h.2) fun m hm => hm ▸ (hJ _ x h.1 hL).1 v
  | .seq a b, h => by
      simp only [pureB, Bool.and_eq_true] at h
      exact hoareG_seqN (hoareG_pure hJ a h.1) (hoareG_pure hJ b h.2)
  | .ite c a b, h => by
      simp only [pureB, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pure hJ a h.1) fun _ _ h => h.1)
        (hoareG_pre (hoareG_pure hJ b h.2) fun _ _ h => h.1)
  | .primitive _ _ _, h => by simp [pureB] at h
  | .store _ _, h => by simp [pureB] at h
  | .store32 _ _, h => by simp [pureB] at h
  | .storeByte _ _, h => by simp [pureB] at h
  | .while _ _, h => by simp [pureB] at h
  | .break, h => by simp [pureB] at h
  | .continue, h => by simp [pureB] at h
  | .call _ _ _, h => by simp [pureB] at h
  | .decCall _ _ _ _ _, h => by simp [pureB] at h
  | .extCall _ _ _ _ _, h => by simp [pureB] at h
  | .raise _ _, h => by simp [pureB] at h
  | .return _, h => by simp [pureB] at h
  | .shMemLoad _ _ _ _, h => by simp [pureB] at h
  | .shMemStore _ _ _, h => by simp [pureB] at h
  | .tick, h => by simp [pureB] at h
  | .annot _ _, h => by simp [pureB] at h

/-! ## `G` under an allocator move -/

/-- The allocator globals are neither typed nor protected. -/
def AllocGlobs (C : Cfg) : Prop :=
  ∀ g, (g = gHeap ∨ g = gFrame ∨ g = gScratch) → g ∉ C.PG ∧ C.GT.lookup g = none

theorem live_mono {p p' : Ptrs} (h : p.Mono p') {rg : Region} {b n : Nat}
    (hl : rg.Live p b n) : rg.Live p' b n := by
  unfold Ptrs.Mono at h
  cases rg <;> (unfold Region.Live at hl ⊢; omega)

theorem allocated_of_live {p : Ptrs} {rg : Region} {b n a : Nat} (hl : rg.Live p b n)
    (h1 : b ≤ a) (h2 : a < b + n) : p.Allocated a := by
  unfold Ptrs.Allocated
  cases rg <;> (unfold Region.Live at hl; omega)

/-- A cell of a `Γ` object is allocated. -/
theorem allocated_of_inObj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {a : Nat}
    (h : InObj Γ a) : p.Allocated a := by
  obtain ⟨o, ho, h1, h2⟩ := h
  exact allocated_of_live (hL.1 o ho).2.2.2.2 h1 h2

theorem layout_mono {C : Cfg} {p p' : Ptrs} {Γ : Gam} (h : p.Mono p') (hL : Layout C p Γ) :
    Layout C p' Γ :=
  ⟨fun o ho => let ⟨a, b, c, d, e⟩ := hL.1 o ho; ⟨a, b, c, d, live_mono h e⟩, hL.2⟩

/-- **`G` under an allocator move.** -/
theorem G_alloc {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAG : AllocGlobs C)
    {Γ : Gam} {s t : State σ} {p p' : Ptrs} (hG : G C H Γ s) (hp : ptrsOf s = some p)
    (hp' : ptrsOf t = some p') (hord' : p'.Ordered) (hmono : p.Mono p')
    (hgl : ∀ g, g ≠ gHeap → g ≠ gFrame → g ≠ gScratch → t.globals.lookup g = s.globals.lookup g)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hmod : ModifiesOnly (fun a => ¬ p.Allocated a.toNat) s.memory t.memory) : G C H Γ t := by
  obtain ⟨p0, hp0, hord, hL, hF, hTg, hGl, hW⟩ := hG
  rw [hp] at hp0
  cases hp0
  have keep : ∀ a : BitVec 64, InObj Γ a.toNat → t.memory a = s.memory a :=
    fun a ha => hmod a (fun h => h (allocated_of_inObj hL ha))
  have hnot : ∀ g, (C.GT.lookup g).isSome ∨ g ∈ C.PG → g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch := by
    intro g hg
    refine ⟨fun h => ?_, fun h => ?_, fun h => ?_⟩ <;>
    · obtain ⟨h1, h2⟩ := hAG g (by simp [h])
      rcases hg with hg | hg
      · rw [h2] at hg; cases hg
      · exact h1 hg
  refine ⟨p', hp', hord', layout_mono hmono hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    have hr : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by
      rw [rd, rd, keep _ (cell_in hord hL ho hk)]
    rw [hr]
    exact hF o ho k hk
  · intro o ho tag ht
    obtain ⟨h0, hc⟩ := slot0 hL ho
    have e := keep _ (hc ▸ cell_in hord hL ho h0)
    have hr : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, e]
    rw [hr]
    exact hTg o ho tag ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    obtain ⟨h1, h2, h3⟩ := hnot g (Or.inl (by rw [hk]; rfl))
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgl g h1 h2 h3]
    exact hv
  · intro o ho
    refine (hH.2 Γ s t o (hW o ho) hd hbe (fun a ha => ?_) (fun g hg => ?_)).1
    · obtain ⟨o', ho', k, hk, -, rfl⟩ := hH.1 Γ s o a ho (hW o ho) ha
      exact keep _ (cell_in hord hL ho' hk)
    · obtain ⟨h1, h2, h3⟩ := hnot g (Or.inr hg)
      exact hgl g h1 h2 h3

end InitECandidate.Solver.MemSafe.Helpers
