import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded626
import InitECandidate.Proofs.BackendStages.ZeroData626
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets626_eq : Padded626.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys626 := by
  with_unfolding_all rfl
theorem zeroTargets626_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded626 acc = ZeroData.keys626.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets626_eq]
#print axioms zeroTargets626_eq
end InitECandidate.Proofs.BackendStages
