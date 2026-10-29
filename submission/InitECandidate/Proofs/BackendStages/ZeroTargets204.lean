import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded204
import InitECandidate.Proofs.BackendStages.ZeroData204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets204_eq : Padded204.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys204 := by
  with_unfolding_all rfl
theorem zeroTargets204_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded204 acc = ZeroData.keys204.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets204_eq]
#print axioms zeroTargets204_eq
end InitECandidate.Proofs.BackendStages
