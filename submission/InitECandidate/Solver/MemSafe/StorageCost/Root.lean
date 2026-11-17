import InitECandidate.Solver.MemSafe.StorageCost.Callees
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StorageCost
variable {σ : Type}
def decBound : Nat := InitECandidate.Solver.Spec.Mpt.Dec.decB (10^25) (10^25)
 RlpCost.Callers.b_rlp_item 3 0
theorem decode_root : Inv.CalleeCostP σ guestCtx (nm "_decode_witness_node_body")
 (InitECandidate.Solver.Spec.Mpt.Dec.DecPre InitECandidate.Solver.Spec.Mpt.Leaves.NdbW) decBound :=
 InitECandidate.Solver.Spec.Mpt.Leaves.decode_witness_node_body_costP_final guestCtx_code
  Helpers.alignedDom_guestCtx cc_decode_step cc_resolve_step RlpCost.Callers.cc_rlp_item
  (Wire.calleeCost_guest (f := nm "node_new_ext") (B := 3) rfl)
  (Wire.calleeCost_guest (f := nm "mpt_fail") (B := 0) rfl)
#print axioms decode_root
end InitECandidate.Solver.MemSafe.StorageCost
