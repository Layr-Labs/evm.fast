import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded806
import InitECandidate.Proofs.BackendStages.ZeroData806
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets806_eq : Padded806.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys806 := by
  with_unfolding_all rfl
theorem zeroTargets806_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded806 acc = ZeroData.keys806.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets806_eq]
#print axioms zeroTargets806_eq
end InitECandidate.Proofs.BackendStages
