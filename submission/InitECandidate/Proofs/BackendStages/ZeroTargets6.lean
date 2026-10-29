import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded6
import InitECandidate.Proofs.BackendStages.ZeroData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets6_eq : Padded6.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys6 := by
  with_unfolding_all rfl
theorem zeroTargets6_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded6 acc = ZeroData.keys6.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets6_eq]
#print axioms zeroTargets6_eq
end InitECandidate.Proofs.BackendStages
