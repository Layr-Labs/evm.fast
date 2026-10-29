import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded757
import InitECandidate.Proofs.BackendStages.ZeroData757
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets757_eq : Padded757.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys757 := by
  with_unfolding_all rfl
theorem zeroTargets757_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded757 acc = ZeroData.keys757.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets757_eq]
#print axioms zeroTargets757_eq
end InitECandidate.Proofs.BackendStages
