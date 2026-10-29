import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded708
import InitECandidate.Proofs.BackendStages.ZeroData708
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets708_eq : Padded708.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys708 := by
  with_unfolding_all rfl
theorem zeroTargets708_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded708 acc = ZeroData.keys708.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets708_eq]
#print axioms zeroTargets708_eq
end InitECandidate.Proofs.BackendStages
