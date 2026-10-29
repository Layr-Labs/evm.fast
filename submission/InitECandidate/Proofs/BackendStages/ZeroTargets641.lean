import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded641
import InitECandidate.Proofs.BackendStages.ZeroData641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets641_eq : Padded641.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys641 := by
  with_unfolding_all rfl
theorem zeroTargets641_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded641 acc = ZeroData.keys641.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets641_eq]
#print axioms zeroTargets641_eq
end InitECandidate.Proofs.BackendStages
