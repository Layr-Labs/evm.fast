import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded432
import InitECandidate.Proofs.BackendStages.ZeroData432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets432_eq : Padded432.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys432 := by
  with_unfolding_all rfl
theorem zeroTargets432_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded432 acc = ZeroData.keys432.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets432_eq]
#print axioms zeroTargets432_eq
end InitECandidate.Proofs.BackendStages
