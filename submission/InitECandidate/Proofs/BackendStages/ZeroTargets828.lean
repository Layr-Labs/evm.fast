import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded828
import InitECandidate.Proofs.BackendStages.ZeroData828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets828_eq : Padded828.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys828 := by
  with_unfolding_all rfl
theorem zeroTargets828_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded828 acc = ZeroData.keys828.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets828_eq]
#print axioms zeroTargets828_eq
end InitECandidate.Proofs.BackendStages
