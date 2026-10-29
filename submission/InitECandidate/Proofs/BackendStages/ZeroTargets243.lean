import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded243
import InitECandidate.Proofs.BackendStages.ZeroData243
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets243_eq : Padded243.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys243 := by
  with_unfolding_all rfl
theorem zeroTargets243_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded243 acc = ZeroData.keys243.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets243_eq]
#print axioms zeroTargets243_eq
end InitECandidate.Proofs.BackendStages
