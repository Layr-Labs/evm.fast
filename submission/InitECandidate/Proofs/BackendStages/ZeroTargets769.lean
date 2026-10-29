import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded769
import InitECandidate.Proofs.BackendStages.ZeroData769
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets769_eq : Padded769.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys769 := by
  with_unfolding_all rfl
theorem zeroTargets769_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded769 acc = ZeroData.keys769.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets769_eq]
#print axioms zeroTargets769_eq
end InitECandidate.Proofs.BackendStages
