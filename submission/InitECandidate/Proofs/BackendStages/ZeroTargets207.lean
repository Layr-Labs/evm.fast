import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded207
import InitECandidate.Proofs.BackendStages.ZeroData207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets207_eq : Padded207.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys207 := by
  with_unfolding_all rfl
theorem zeroTargets207_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded207 acc = ZeroData.keys207.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets207_eq]
#print axioms zeroTargets207_eq
end InitECandidate.Proofs.BackendStages
