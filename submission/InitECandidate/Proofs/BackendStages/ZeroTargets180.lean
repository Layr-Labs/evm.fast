import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded180
import InitECandidate.Proofs.BackendStages.ZeroData180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets180_eq : Padded180.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys180 := by
  with_unfolding_all rfl
theorem zeroTargets180_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded180 acc = ZeroData.keys180.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets180_eq]
#print axioms zeroTargets180_eq
end InitECandidate.Proofs.BackendStages
