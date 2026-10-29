import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded196
import InitECandidate.Proofs.BackendStages.ZeroData196
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets196_eq : Padded196.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys196 := by
  with_unfolding_all rfl
theorem zeroTargets196_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded196 acc = ZeroData.keys196.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets196_eq]
#print axioms zeroTargets196_eq
end InitECandidate.Proofs.BackendStages
