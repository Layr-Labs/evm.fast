import InitECandidate.Solver.Spec.Mpt.Leaves.FillFinal
import InitECandidate.Solver.Spec.Mpt.Leaves.FinSpec

/-!
# `_node_rlp_fill` with both callee hypotheses discharged

`node_rlp_fill_costP_final`: `node_rlp_fill_costP` (`Spec/Mpt/Fill/Main.lean`) with `BeginSpec`
(`beginSpec`, `Begin.lean`) and `FinishSpec` (`finishSpec`, `FinSpec.lean`) proved. What is left:
the precondition `FillPre`, the context facts `NullSafe X`, `AlignedDom X`, `DomTop X` (all true
of `guestCtx`: `nullSafe_guestCtx`, `alignedDom_guestCtx`, `domTop_guestCtx`) and the table
`CalleeCost`s of the six callees.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem node_rlp_fill_costP_final (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hA : MemSafe.Helpers.AlignedDom X) (hT : DomTop X) {Bn Ba Bbeg Bfin Bm Br : Nat}
    (hn : CalleeCost σ X (nm "_node_needs_rlp") Bn) (ha : CalleeCost σ X (nm "scratch_alloc") Ba)
    (hb : CalleeCost σ X (nm "_node_rlp_begin") Bbeg)
    (hf : CalleeCost σ X (nm "_node_rlp_finish") Bfin)
    (hm : CalleeCost σ X (nm "scratch_mark") Bm) (hr : CalleeCost σ X (nm "scratch_release") Br) :
    Inv.CalleeCostP σ X (nm "_node_rlp_fill") FillPre (fillB Bn Ba Bbeg Bfin Bm Br) :=
  node_rlp_fill_costP_begin hC hNS (finishSpec hC hA hT hNS) hn ha hb hf hm hr

end InitECandidate.Solver.Spec.Mpt.Leaves
