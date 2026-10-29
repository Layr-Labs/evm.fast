import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded681
import InitECandidate.Proofs.BackendStages.ZeroData681
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets681_eq : Padded681.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys681 := by
  with_unfolding_all rfl
theorem zeroTargets681_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded681 acc = ZeroData.keys681.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets681_eq]
#print axioms zeroTargets681_eq
end InitECandidate.Proofs.BackendStages
