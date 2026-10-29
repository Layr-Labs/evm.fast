import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded517
import InitECandidate.Proofs.BackendStages.ZeroData517
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets517_eq : Padded517.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys517 := by
  with_unfolding_all rfl
theorem zeroTargets517_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded517 acc = ZeroData.keys517.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets517_eq]
#print axioms zeroTargets517_eq
end InitECandidate.Proofs.BackendStages
