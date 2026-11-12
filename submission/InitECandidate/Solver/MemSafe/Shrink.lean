import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.Types

/-!
# Dropping objects from `Γ` (interface rev. 5)

* `layout_shrink`: a duplicate-free sub-collection of a laid-out `Γ` is laid out.
* `G_shrink` (**the release law**, rev. 6): `G` survives dropping objects, given the typed
  fields and the globals over the smaller `Γ`, the hook law `HooksShrinkR C H Ref` and the
  closure condition (no kept hook depends on a dropped object).
* `fields_shrink_nonheap`: the fields survive when only non-heap objects (frame-local scratch /
  frame-memory objects) are dropped and `HeapPtrs C` holds (typed slots target heap types
  only). `heapPtrs_of` decides `HeapPtrs`; `heapPtrs_guest`: the guest type table has
  it (every typed slot of every type targets heap types).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem layout_disj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) (hne : o ≠ o') : o.hi ≤ o'.lo ∨ o'.hi ≤ o.lo := by
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  have hij : i ≠ j := fun h => hne (by subst h; rfl)
  exact hL.2 i j hi hj hij

theorem layout_shrink {C : Cfg} {p : Ptrs} {Γ Γs : Gam} (hL : Layout C p Γ)
    (hsub : ∀ o ∈ Γs, o ∈ Γ) (hnd : Γs.Nodup) : Layout C p Γs := by
  refine ⟨fun o ho => hL.1 o (hsub o ho), fun i j hi hj hij => ?_⟩
  have hne : Γs[i] ≠ Γs[j] := fun h => hij ((List.Nodup.getElem_inj_iff hnd).mp h)
  exact layout_disj hL (hsub _ (List.getElem_mem hi)) (hsub _ (List.getElem_mem hj)) hne

/-- **The release law** (rev. 6). `G` survives dropping objects from `Γ` when the kept hooks
do not depend on dropped objects. -/
theorem G_shrink {C : Cfg} {H : Hooks σ} {Ref : Gam → State σ → Obj → BitVec 64 → Prop}
    {Γ Γs : Gam} {s : State σ} (hG : G C H Γ s) (hsub : ∀ o ∈ Γs, o ∈ Γ) (hnd : Γs.Nodup)
    (hF : Fields C Γs s.memory) (hGl : Globs C Γs s) (hS : HooksShrinkR C H Ref)
    (hcl : ∀ o ∈ Γs, ∀ x ∈ Γ, Ref Γ s o x.base → x ∈ Γs) : G C H Γs s := by
  obtain ⟨p, hp, hord, hL, -, hT, -, hW⟩ := hG
  exact ⟨p, hp, hord, layout_shrink hL hsub hnd, hF, fun o ho tag ht => hT o (hsub o ho) tag ht,
    hGl, fun o ho => hS Γ Γs s o hsub ho (hW o (hsub o ho)) (hcl o ho)⟩

theorem fits_shrink_nonheap {C : Cfg} {Γ Γs : Gam} {k : FK} {v : BitVec 64}
    (hk : fkHeap C k = true) (hdrop : ∀ o' ∈ Γ, o' ∉ Γs → (C.ty o'.ty).region ≠ .heap)
    (h : Fits Γ k v) : Fits Γs k v := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
    obtain ⟨o', ho', hb, ht⟩ := h
    by_cases hin : o' ∈ Γs
    · exact ⟨o', hin, hb, ht⟩
    · simp only [fkHeap, beq_iff_eq] at hk
      exact absurd (ht ▸ hk) (hdrop o' ho' hin)
  | nptr t =>
    rcases h with h | ⟨o', ho', hb, ht⟩
    · exact Or.inl h
    · by_cases hin : o' ∈ Γs
      · exact Or.inr ⟨o', hin, hb, ht⟩
      · simp only [fkHeap, beq_iff_eq] at hk
        exact absurd (ht ▸ hk) (hdrop o' ho' hin)
  | uptr ts =>
    rcases h with h | ⟨o', ho', hb, ht⟩
    · exact Or.inl h
    · by_cases hin : o' ∈ Γs
      · exact Or.inr ⟨o', hin, hb, ht⟩
      · simp only [fkHeap, List.all_eq_true, beq_iff_eq] at hk
        exact absurd (hk _ ht) (hdrop o' ho' hin)

/-- The typed fields survive dropping non-heap objects. -/
theorem fields_shrink_nonheap {C : Cfg} {Γ Γs : Gam} {m : Mem} (hHP : HeapPtrs C)
    (hF : Fields C Γ m) (hsub : ∀ o ∈ Γs, o ∈ Γ)
    (hdrop : ∀ o' ∈ Γ, o' ∉ Γs → (C.ty o'.ty).region ≠ .heap) : Fields C Γs m :=
  fun o ho k hk => fits_shrink_nonheap (hHP o.ty k) hdrop (hF o (hsub o ho) k hk)

/-- The release law for frame-local (non-heap) objects. -/
theorem G_shrink_nonheap {C : Cfg} {H : Hooks σ} {Ref : Gam → State σ → Obj → BitVec 64 → Prop}
    {Γ Γs : Gam} {s : State σ} (hG : G C H Γ s)
    (hsub : ∀ o ∈ Γs, o ∈ Γ) (hnd : Γs.Nodup) (hHP : HeapPtrs C)
    (hdrop : ∀ o' ∈ Γ, o' ∉ Γs → (C.ty o'.ty).region ≠ .heap) (hGl : Globs C Γs s)
    (hS : HooksShrinkR C H Ref) (hcl : ∀ o ∈ Γs, ∀ x ∈ Γ, Ref Γ s o x.base → x ∈ Γs) :
    G C H Γs s :=
  G_shrink hG hsub hnd (fields_shrink_nonheap hHP hG.choose_spec.2.2.2.1 hsub hdrop) hGl hS hcl

/-- A decision procedure for `HeapPtrs`. -/
def heapPtrsB (C : Cfg) : Bool := C.T.all fun d => d.fixed.all (fkHeap C) && fkHeap C d.rest

theorem heapPtrs_of {C : Cfg} (h : heapPtrsB C = true) : HeapPtrs C := by
  intro t k
  unfold Cfg.ty TyD.slot
  simp only [List.getD_eq_getElem?_getD]
  cases hget : C.T[t]? with
  | none => rfl
  | some d =>
    simp only [Option.getD_some]
    have hd := List.all_eq_true.mp h d (List.mem_of_getElem? hget)
    simp only [Bool.and_eq_true, List.all_eq_true] at hd
    cases hk : d.fixed[k]? with
    | none => exact hd.2
    | some f => exact hd.1 f (List.mem_of_getElem? hk)

theorem heapPtrs_guest : HeapPtrs Types.guestC := heapPtrs_of (by decide)

end InitECandidate.Solver.MemSafe
