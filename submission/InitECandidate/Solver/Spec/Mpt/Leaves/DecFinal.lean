import InitECandidate.Solver.Spec.Mpt.Leaves.Compact
import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpItem

/-!
# `_decode_witness_node_body` with the provable leaves discharged

`decode_witness_node_body_costP_leaves`: `Dec.decode_witness_node_body_costP_leaf` at
`W := NdbW` (`wFrame_ndbW`, `freshFoot_nodedb_lookup`), with `rlp_decode_fully`, `rlp_item`,
`compact_to_nibbles` and `node_new_branch` discharged. The remaining leaf hypothesis is the
located footprint of `rlp_list_to_slices` (`SlPre` / `SlQ`); `Leaves/Slices.lean` proves it
(`decode_witness_node_body_costP_final`).
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

theorem decode_witness_node_body_costP_leaves (hC : X.code.lookup = guestCode)
    (hA : MemSafe.Helpers.AlignedDom X)
    (hsl : FreshFoot σ X (nm "rlp_list_to_slices") SlPre SlQ)
    {Bds Brs Bri Bnx Bf : Nat}
    (hds : CalleeCost σ X (nm "_decode_step") Bds) (hrs : CalleeCost σ X (nm "_resolve_step") Brs)
    (hri : CalleeCost σ X (nm "rlp_item") Bri) (hnx : CalleeCost σ X (nm "node_new_ext") Bnx)
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) :
    Inv.CalleeCostP σ X (nm "_decode_witness_node_body") (DecPre NdbW) (decB Bds Brs Bri Bnx Bf) :=
  decode_witness_node_body_costP_leaf hC wFrame_ndbW (freshFoot_rlp_decode_fully hC) hsl
    (freshFoot_rlp_item hC) (freshFoot_compact_to_nibbles hC) (freshFoot_node_new_branch hC hA)
    (freshFoot_nodedb_lookup hC) hds hrs hri hnx hf

end InitECandidate.Solver.Spec.Mpt.Leaves
