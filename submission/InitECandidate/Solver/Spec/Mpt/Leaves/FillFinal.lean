import InitECandidate.Solver.Spec.Mpt.Leaves.Begin

/-!
# `_node_rlp_fill` with `BeginSpec` discharged

`node_rlp_fill_costP_begin`: `node_rlp_fill_costP` (`Spec/Mpt/Fill/Main.lean`) with `BeginSpec`
proved (`beginSpec`, `Begin.lean`). `FinishSpec` is a hypothesis here; `FillDone.lean`
discharges it (`finishSpec`, `FinSpec.lean`) in `node_rlp_fill_costP_final`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem node_rlp_fill_costP_begin (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hfin : FinishSpec σ X) {Bn Ba Bbeg Bfin Bm Br : Nat}
    (hn : CalleeCost σ X (nm "_node_needs_rlp") Bn) (ha : CalleeCost σ X (nm "scratch_alloc") Ba)
    (hb : CalleeCost σ X (nm "_node_rlp_begin") Bbeg)
    (hf : CalleeCost σ X (nm "_node_rlp_finish") Bfin)
    (hm : CalleeCost σ X (nm "scratch_mark") Bm) (hr : CalleeCost σ X (nm "scratch_release") Br) :
    Inv.CalleeCostP σ X (nm "_node_rlp_fill") FillPre (fillB Bn Ba Bbeg Bfin Bm Br) :=
  node_rlp_fill_costP hC hNS (beginSpec hC) hfin hn ha hb hf hm hr

end InitECandidate.Solver.Spec.Mpt.Leaves
