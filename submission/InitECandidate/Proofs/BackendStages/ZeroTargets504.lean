import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded504
import InitECandidate.Proofs.BackendStages.ZeroData504
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets504_eq : Padded504.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys504 := by
  with_unfolding_all rfl
theorem zeroTargets504_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded504 acc = ZeroData.keys504.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets504_eq]
#print axioms zeroTargets504_eq
end InitECandidate.Proofs.BackendStages
