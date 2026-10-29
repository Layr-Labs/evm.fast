import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded702
import InitECandidate.Proofs.BackendStages.ZeroData702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets702_eq : Padded702.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys702 := by
  with_unfolding_all rfl
theorem zeroTargets702_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded702 acc = ZeroData.keys702.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets702_eq]
#print axioms zeroTargets702_eq
end InitECandidate.Proofs.BackendStages
