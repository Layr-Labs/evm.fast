import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded639
import InitECandidate.Proofs.BackendStages.ZeroData639
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets639_eq : Padded639.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys639 := by
  with_unfolding_all rfl
theorem zeroTargets639_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded639 acc = ZeroData.keys639.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets639_eq]
#print axioms zeroTargets639_eq
end InitECandidate.Proofs.BackendStages
