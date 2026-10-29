import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded602
import InitECandidate.Proofs.BackendStages.ZeroData602
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets602_eq : Padded602.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys602 := by
  with_unfolding_all rfl
theorem zeroTargets602_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded602 acc = ZeroData.keys602.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets602_eq]
#print axioms zeroTargets602_eq
end InitECandidate.Proofs.BackendStages
