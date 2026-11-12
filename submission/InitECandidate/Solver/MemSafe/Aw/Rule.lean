import InitECandidate.Solver.MemSafe.Aw.MemAny
import InitECandidate.Solver.MemSafe.Frames.Release

set_option autoImplicit false

/-!
# The above-writer rule

When every object of `Γ` lies below `h`, a write at or above `h` cannot break `G`: `G` reads only
cells of `Γ` objects. The write need not stay inside its `alloc` (see
`research/notes/band-chain-plan.md`).

* `Below Γ h`.
* **`G_above`**: `G` under a write of cells `≥ h` (`G_buf`).
* **`G_heapOnly`**: with `ev` / `cur_cont` null, `G` for the heap objects of `Γ` alone, with no
  allocator pointer moved (`G_release` without the release): what `process_transaction`'s tail
  uses after the frame loop.
-/

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- Every object of `Γ` ends at or below `h`. -/
def Below (Γ : Gam) (h : Nat) : Prop := ∀ o ∈ Γ, o.hi ≤ h

theorem Below.mono {Γ : Gam} {h h' : Nat} (hB : Below Γ h) (hh : h ≤ h') : Below Γ h' :=
  fun o ho => Nat.le_trans (hB o ho) hh

/-- An aligned cell at or above an aligned `h` lies outside every object below `h`. -/
theorem not_inObj {Γ : Gam} {h : Nat} (hB : Below Γ h) {a : BitVec 64} (ha : h ≤ a.toNat) :
    ¬ InObj Γ a.toNat := by
  rintro ⟨o, ho, -, hlt⟩
  have := hB o ho
  omega

theorem abvR_above {D a : BitVec 64} {h : Nat} (h8 : h % 8 = 0) (hD : h ≤ D.toNat)
    (ha : AbvR D a) : h ≤ a.toNat := by
  obtain ⟨h1, h2⟩ := ha
  omega

/-- **`G` under writes above every object.** -/
theorem G_above {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C) {Γ : Gam}
    {s t : State σ} {h : Nat} (hB : Below Γ h) (hG : G C H Γ s) (hgl : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory t.memory) (hR : ∀ a, R a → h ≤ a.toNat) : G C H Γ t :=
  G_buf hH hT hG hgl hd hbe hmod fun a ha => Or.inr (not_inObj hB (hR a ha))

/-- **`G` for the heap objects alone**, nothing else changed. -/
theorem G_heapOnly {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref)
    (hD : DrvCfg C H tEV tCK) (hrg : (C.ty tEV).region = .scratch ∧ ∀ t ∈ adjTys, (C.ty t).region = .scratch)
    {Γ : Gam} {s : State σ} (hG : G C H Γ s)
    (hev : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax) :
    G C H (Γ.filter fun o => (C.ty o.ty).region == .heap) s := by
  have hG0 := hG
  obtain ⟨p, hp, hord, hL, hF, -, hGl, hW⟩ := hG0
  let Γs := Γ.filter fun o => (C.ty o.ty).region == .heap
  have hmem : ∀ {o : Obj}, o ∈ Γs ↔ o ∈ Γ ∧ (C.ty o.ty).region = .heap := by
    intro o
    simp [Γs, List.mem_filter]
  have hsub : ∀ o ∈ Γs, o ∈ Γ := fun o ho => (hmem.mp ho).1
  have hnd : Γs.Nodup := (layout_nodup hL).filter _
  have hdrop : ∀ o' ∈ Γ, o' ∉ Γs → (C.ty o'.ty).region ≠ .heap :=
    fun o' ho' hn hr => hn (hmem.mpr ⟨ho', hr⟩)
  have hFs : Fields C Γs s.memory := fields_shrink_nonheap hR.heapPtrs hF hsub hdrop
  have hGls : Globs C Γs s := by
    intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, hv, ?_⟩
    by_cases h1 : g = nmEv
    · subst h1
      obtain ⟨e, he, hsm⟩ := hev
      rw [he] at hv
      cases hv
      rcases hD.evGT k hk with rfl | rfl
      · obtain ⟨o, ho, hb, ht⟩ := hf
        have hreg : (C.ty o.ty).region = .scratch := by rw [ht]; exact hrg.1
        obtain ⟨h3, -⟩ := (live_of hL ho).2.2 hreg
        have hN : nullMax < heapEnd := by decide
        have hO := hord
        unfold Ptrs.Ordered at hO
        have hlo : o.lo = (o.base).toNat := rfl
        rw [hb] at hlo
        omega
      · exact Or.inl hsm
    by_cases h2 : g = nmCC
    · subst h2
      obtain ⟨c, hc, hsm⟩ := hcc
      rw [hc] at hv
      cases hv
      rcases hD.ccGT k hk with rfl | rfl
      · obtain ⟨o, ho, hb, ht⟩ := hf
        have hreg : (C.ty o.ty).region = .scratch := by rw [ht]; exact hD.ckRegion
        obtain ⟨h3, -⟩ := (live_of hL ho).2.2 hreg
        have hN : nullMax < heapEnd := by decide
        have hO := hord
        unfold Ptrs.Ordered at hO
        have hlo : o.lo = (o.base).toNat := rfl
        rw [hb] at hlo
        omega
      · exact Or.inl hsm
    · exact fits_shrink_nonheap (hR.globHeap g k hk h1 h2) hdrop hf
  refine G_shrink hG hsub hnd hFs hGls hR.shrink ?_
  intro o ho x hx href
  obtain ⟨ho, hoh⟩ := hmem.mp ho
  refine hmem.mpr ⟨hx, ?_⟩
  rcases hR.refCases Γ s o x.base p hL ho (hW o ho) href x hx rfl with h | h | ⟨het, -⟩ | ⟨ht, h⟩
  · exact h
  · rw [base_unique hL hx ho h]; exact hoh
  · rw [het, hrg.1] at hoh; cases hoh
  · exfalso
    have hxs := hrg.2 _ ht
    obtain ⟨h1, -⟩ := (live_of hL hx).2.2 hxs
    obtain ⟨-, h2⟩ := (live_of hL ho).1 hoh
    have hO := hord
    unfold Ptrs.Ordered at hO
    have hsz : 0 < o.size := (hL.1 o ho).2.2.1
    have hhi : x.hi = x.lo + x.size := rfl
    have hhi2 : o.hi = o.lo + o.size := rfl
    omega

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.G_above
#print axioms InitECandidate.Solver.MemSafe.Aw.G_heapOnly
