import InitECandidate.Solver.MemSafe.Ins.Slice

set_option autoImplicit false

/-!
# `_insert_into_leaf` at `guestHooksR`

* `nleaf_slot`: the scalar slots of a leaf. The value-slot stores `st node + 48, vptr` /
  `st node + 56, vlen` are hook-aware pair stores (`gp_stPairK`, in `LeafFn`).
* `sumSpecA_insert_into_leaf_G`: the function summary.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- Slots `1 .. 3` of an `NLEAF` object are `scalar` (slots `4 .. 7` are the hooked path and value slices). -/
theorem nleaf_slot {o : Obj} (ht : o.ty = Types.tNLEAF)
    (hsz : (Types.guestC.ty o.ty).minSz ≤ o.size) {j : Nat} (hj0 : 1 ≤ j) (hj : j < 4) :
    o.HasSlot j ∧ (Types.guestC.ty o.ty).slot j = .scalar := by
  rw [ht, Types.ty_NLEAF] at hsz ⊢
  simp only [Types.nleafTy] at hsz
  unfold Obj.HasSlot
  refine ⟨by omega, ?_⟩
  interval_cases j <;> simp [Types.nleafTy, TyD.slot]

/-- An object of `Γ` with a given type, kept by `Ext`. -/
theorem obT_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {B : BitVec 64} {t : Nat}
    (h : ∃ o ∈ Γ, o.base = B ∧ o.ty = t) : ∃ o ∈ Γ', o.base = B ∧ o.ty = t := by
  obtain ⟨o, ho, hb, ht⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := he o ho
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩

end InitECandidate.Solver.MemSafe.Ins

