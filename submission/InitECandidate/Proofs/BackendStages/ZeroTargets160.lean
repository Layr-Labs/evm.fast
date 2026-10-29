import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded160
import InitECandidate.Proofs.BackendStages.ZeroData160
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets160_eq : Padded160.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys160 := by
  with_unfolding_all rfl
theorem zeroTargets160_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded160 acc = ZeroData.keys160.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets160_eq]
#print axioms zeroTargets160_eq
end InitECandidate.Proofs.BackendStages
