import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded82
import InitECandidate.Proofs.BackendStages.ZeroData82
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets82_eq : Padded82.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys82 := by
  with_unfolding_all rfl
theorem zeroTargets82_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded82 acc = ZeroData.keys82.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets82_eq]
#print axioms zeroTargets82_eq
end InitECandidate.Proofs.BackendStages
