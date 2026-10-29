import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded589
import InitECandidate.Proofs.BackendStages.ZeroData589
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets589_eq : Padded589.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys589 := by
  with_unfolding_all rfl
theorem zeroTargets589_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded589 acc = ZeroData.keys589.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets589_eq]
#print axioms zeroTargets589_eq
end InitECandidate.Proofs.BackendStages
