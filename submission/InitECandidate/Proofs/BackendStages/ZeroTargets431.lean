import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded431
import InitECandidate.Proofs.BackendStages.ZeroData431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets431_eq : Padded431.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys431 := by
  with_unfolding_all rfl
theorem zeroTargets431_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded431 acc = ZeroData.keys431.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets431_eq]
#print axioms zeroTargets431_eq
end InitECandidate.Proofs.BackendStages
