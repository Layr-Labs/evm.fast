import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded269
import InitECandidate.Proofs.BackendStages.ZeroData269
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets269_eq : Padded269.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys269 := by
  with_unfolding_all rfl
theorem zeroTargets269_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded269 acc = ZeroData.keys269.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets269_eq]
#print axioms zeroTargets269_eq
end InitECandidate.Proofs.BackendStages
