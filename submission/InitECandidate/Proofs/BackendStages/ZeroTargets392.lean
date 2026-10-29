import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded392
import InitECandidate.Proofs.BackendStages.ZeroData392
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets392_eq : Padded392.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys392 := by
  with_unfolding_all rfl
theorem zeroTargets392_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded392 acc = ZeroData.keys392.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets392_eq]
#print axioms zeroTargets392_eq
end InitECandidate.Proofs.BackendStages
