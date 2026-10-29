import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded436
import InitECandidate.Proofs.BackendStages.ZeroData436
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets436_eq : Padded436.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys436 := by
  with_unfolding_all rfl
theorem zeroTargets436_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded436 acc = ZeroData.keys436.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets436_eq]
#print axioms zeroTargets436_eq
end InitECandidate.Proofs.BackendStages
