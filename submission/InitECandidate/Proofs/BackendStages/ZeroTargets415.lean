import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded415
import InitECandidate.Proofs.BackendStages.ZeroData415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets415_eq : Padded415.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys415 := by
  with_unfolding_all rfl
theorem zeroTargets415_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded415 acc = ZeroData.keys415.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets415_eq]
#print axioms zeroTargets415_eq
end InitECandidate.Proofs.BackendStages
