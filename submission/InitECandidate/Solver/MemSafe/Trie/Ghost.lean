import InitECandidate.Solver.MemSafe.Trie.Forget
import InitECandidate.Solver.MemSafe.Shrink

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# The ghost world: forgotten objects and zeroed globals

`kept Γ`: the objects of `Γ` of a surviving type. `zeroSt s`: `s` with the forgotten globals set to the word `0`.
`ghost_G`: `G guestC guestHooksR Γ s` gives `G guestC guestHooksR (kept Γ) (zeroSt s)`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- The surviving objects. -/
def kept (Γ : Gam) : Gam := Γ.filter fun o => keepTy o.ty

/-- The forgotten globals set to the word `0`. -/
def zeroN (gl : HolFiniteMapExact MlS (ValueHOL 64)) : HolFiniteMapExact MlS (ValueHOL 64) :=
  forgotten.foldl (fun m g => m.update (g, .val (.word 0))) gl

def zeroSt (s : State σ) : State σ := { s with globals := zeroN s.globals }

theorem zeroN_aux (l : List MlS) (m : HolFiniteMapExact MlS (ValueHOL 64)) (g : MlS) :
    (g ∉ l → (l.foldl (fun m g => m.update (g, .val (.word 0))) m).lookup g = m.lookup g) ∧
    (g ∈ l → (l.foldl (fun m g => m.update (g, .val (.word 0))) m).lookup g = some (.val (.word 0))) := by
  induction l generalizing m with
  | nil => exact ⟨fun _ => rfl, fun h => by cases h⟩
  | cons x l ih =>
      simp only [List.foldl_cons]
      refine ⟨fun h => ?_, fun h => ?_⟩
      · have hx : g ≠ x := fun e => h (e ▸ List.mem_cons_self ..)
        rw [(ih _).1 (fun hl => h (List.mem_cons_of_mem _ hl))]
        simp [FUPDATE, Ne.symm hx]
      · by_cases hl : g ∈ l
        · exact (ih _).2 hl
        · have hgx : g = x := by
            rcases List.mem_cons.mp h with e | e
            · exact e
            · exact absurd e hl
          rw [(ih _).1 hl]
          simp [FUPDATE, hgx]

theorem zeroN_notin {gl : HolFiniteMapExact MlS (ValueHOL 64)} {g : MlS} (h : g ∉ forgotten) :
    (zeroN gl).lookup g = gl.lookup g := (zeroN_aux forgotten gl g).1 h

theorem zeroN_in {gl : HolFiniteMapExact MlS (ValueHOL 64)} {g : MlS} (h : g ∈ forgotten) :
    (zeroN gl).lookup g = some (.val (.word 0)) := (zeroN_aux forgotten gl g).2 h

theorem grRel_zero (s : State σ) : GrRel forgotten s (zeroSt s) :=
  grRel_of (fun g hg => zeroN_notin hg)

theorem gword_zero_notin {s : State σ} {g : MlS} (h : g ∉ forgotten) : gword (zeroSt s) g = gword s g := by
  unfold gword zeroSt
  simp only [zeroN_notin h]

theorem ptrsOf_zero (s : State σ) : ptrsOf (zeroSt s) = ptrsOf s := by
  have h1 : gHeap ∉ forgotten := by decide
  have h2 : gFrame ∉ forgotten := by decide
  have h3 : gScratch ∉ forgotten := by decide
  unfold ptrsOf
  rw [gword_zero_notin h1, gword_zero_notin h2, gword_zero_notin h3]

theorem mem_kept {Γ : Gam} {o : Obj} : o ∈ kept Γ ↔ o ∈ Γ ∧ keepTy o.ty = true := by
  unfold kept
  simp only [List.mem_filter]

theorem keepTy_slot {t : Nat} (h : keepTy t = true) (k : Nat) :
    (Types.guestC.ty t).slot k = .scalar ∨ (Types.guestC.ty t).slot k = .prot := by
  simp only [keepTy, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  obtain ⟨⟨⟨⟨-, -⟩, hfix⟩, hrest⟩, -⟩ := h
  unfold TyD.slot
  rcases hk : (Types.guestC.ty t).fixed[k]? with _ | x
  · simp [List.getD_eq_getElem?_getD, hk]; exact hrest
  · simp [List.getD_eq_getElem?_getD, hk]
    exact hfix x (List.mem_of_getElem? hk)

theorem keepTy_ne_rec {t : Nat} (h : keepTy t = true) : t ∉ recTys := by
  simp only [keepTy, Bool.and_eq_true, Bool.not_eq_true', decide_eq_true_eq] at h
  intro hm
  have := h.1.1.1.1.1.2
  simp [List.contains_eq_any_beq, hm] at this

theorem keepTy_notag {t : Nat} (h : keepTy t = true) : Types.guestC.tags.lookup t = none := by
  simp only [keepTy, Bool.and_eq_true] at h
  exact Option.isNone_iff_eq_none.mp h.2

theorem wf_B8 {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = Types.tB8) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  have h1 : hkOf Types.tB8 = .none := by decide
  have h2 : Types.tB8 ≠ tJOURNAL := by decide
  have h3 : Types.tB8 ∉ lstTys := by decide
  have h5 : Types.tB8 ∉ recTys := by decide
  refine ⟨⟨⟨gwf_none (ht ▸ h1), fun hj => absurd (ht ▸ hj) h2⟩, fun hl => absurd (ht ▸ hl) h3⟩, fun e he hty => ?_⟩
  have hm := Hooks.recTab_ty he
  rw [hty, ht] at hm
  exact absurd hm h5

theorem wf_keep {Γ : Gam} {s : State σ} {o : Obj} (h : keepTy o.ty = true) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  have hrec := keepTy_ne_rec h
  have hb : (decide (RecTyOK o.ty) || decide (o.ty = Types.tB8)) = true := by
    simp only [keepTy, Bool.and_eq_true] at h
    exact h.1.1.1.1.1.1
  simp only [Bool.or_eq_true, decide_eq_true_eq] at hb
  rcases hb with hr | hb8
  · refine ⟨Hooks.recBase_triv Γ s o hr, fun e he hty => ?_⟩
    have hm := Hooks.recTab_ty he
    rw [hty] at hm
    exact absurd hm hrec
  · exact wf_B8 hb8

theorem layout_nodup {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) : Γ.Nodup := by
  rw [List.nodup_iff_getElem?_ne_getElem?]
  intro i j hij hj heq
  have hi : i < Γ.length := lt_trans hij hj
  rw [List.getElem?_eq_getElem hi, List.getElem?_eq_getElem hj] at heq
  have heq' : Γ[i] = Γ[j] := Option.some.inj heq
  rcases hL.2 i j hi hj (Nat.ne_of_lt hij) with h | h
  · have := (hL.1 Γ[i] (List.getElem_mem hi)).2.2.1
    rw [← heq'] at h
    unfold Obj.hi Obj.lo at h
    omega
  · have := (hL.1 Γ[j] (List.getElem_mem hj)).2.2.1
    rw [heq'] at h
    unfold Obj.hi Obj.lo at h
    omega

theorem lookup_mem_pair {α β : Type} [BEq α] [LawfulBEq α] :
    ∀ {l : List (α × β)} {a : α} {b : β}, l.lookup a = some b → (a, b) ∈ l
  | [], _, _, h => by simp [List.lookup] at h
  | (x, y) :: l, a, b, h => by
      unfold List.lookup at h
      by_cases hax : a = x
      · subst hax
        simp only [BEq.rfl, Option.some.injEq] at h
        subst h
        exact List.mem_cons_self ..
      · have : (a == x) = false := by simpa using hax
        rw [this] at h
        exact List.mem_cons_of_mem _ (lookup_mem_pair h)

theorem target_keep {g : MlS} (hg : g ∉ forgotten) {k : FK} (hk : Types.guestC.GT.lookup g = some k) :
    (∀ t, k = .ptr t → keepTy t = true) ∧ (∀ t, k = .nptr t → keepTy t = true) ∧
      (∀ ts, k = .uptr ts → ts.all keepTy = true) := by
  have hmem : g ∈ typedGlobals := by
    unfold typedGlobals
    exact List.mem_map.mpr ⟨(g, k), lookup_mem_pair hk, rfl⟩
  refine ⟨fun t ht => ?_, fun t ht => ?_, fun ts ht => ?_⟩
  · by_contra hn
    apply hg
    unfold forgotten
    refine List.mem_filter.mpr ⟨hmem, ?_⟩
    rw [hk, ht]
    simpa using hn
  · by_contra hn
    apply hg
    unfold forgotten
    refine List.mem_filter.mpr ⟨hmem, ?_⟩
    rw [hk, ht]
    simpa using hn
  · by_contra hn
    apply hg
    unfold forgotten
    refine List.mem_filter.mpr ⟨hmem, ?_⟩
    rw [hk, ht]
    simpa using hn

theorem fits_kept {Γ : Gam} {k : FK} {v : BitVec 64} (h : Fits Γ k v)
    (hp : ∀ t, k = .ptr t → keepTy t = true) (hn : ∀ t, k = .nptr t → keepTy t = true)
    (hu : ∀ ts, k = .uptr ts → ts.all keepTy = true) : Fits (kept Γ) k v := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
      obtain ⟨o, ho, hb, ht⟩ := h
      exact ⟨o, mem_kept.mpr ⟨ho, ht ▸ hp t rfl⟩, hb, ht⟩
  | nptr t =>
      rcases h with h | ⟨o, ho, hb, ht⟩
      · exact Or.inl h
      · exact Or.inr ⟨o, mem_kept.mpr ⟨ho, ht ▸ hn t rfl⟩, hb, ht⟩
  | uptr ts =>
      rcases h with h | ⟨o, ho, hb, ht⟩
      · exact Or.inl h
      · refine Or.inr ⟨o, mem_kept.mpr ⟨ho, ?_⟩, hb, ht⟩
        exact List.all_eq_true.mp (hu ts rfl) o.ty ht

theorem ghost_G {Γ : Gam} {s : State σ} (hG : G Types.guestC (guestHooksR (σ := σ)) Γ s) :
    G Types.guestC (guestHooksR (σ := σ)) (kept Γ) (zeroSt s) := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p, by rw [ptrsOf_zero]; exact hp, hord, ?_, ?_, ?_, ?_, ?_⟩
  · exact layout_shrink hL (fun o ho => (mem_kept.mp ho).1) (List.Nodup.filter _ (layout_nodup hL))
  · intro o ho k hk
    rcases keepTy_slot (mem_kept.mp ho).2 k with h | h <;> rw [h] <;> trivial
  · intro o ho tag ht
    rw [keepTy_notag (mem_kept.mp ho).2] at ht
    cases ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    by_cases hg : g ∈ forgotten
    · obtain ⟨t, ht⟩ : ∃ t, Types.guestC.GT.lookup g = some (.nptr t) := by
        have := List.all_eq_true.mp forgotten_nptr g hg
        revert this
        cases hl : Types.guestC.GT.lookup g with
        | none => simp
        | some k' =>
            cases k' <;> simp
      rw [ht] at hk
      cases hk
      refine ⟨0, ?_, Or.inl (by unfold nullMax; decide)⟩
      unfold gword zeroSt
      simp only [zeroN_in hg]
    · obtain ⟨h1, h2, h3⟩ := target_keep hg hk
      exact ⟨v, by rw [gword_zero_notin hg]; exact hv, fits_kept hf h1 h2 h3⟩
  · intro o ho
    exact wf_keep (mem_kept.mp ho).2

end InitECandidate.Solver.MemSafe.Trie
