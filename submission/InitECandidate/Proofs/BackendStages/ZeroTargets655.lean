import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded655
import InitECandidate.Proofs.BackendStages.ZeroData655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets655_eq : Padded655.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys655 := by
  with_unfolding_all rfl
theorem zeroTargets655_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded655 acc = ZeroData.keys655.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets655_eq]
#print axioms zeroTargets655_eq
end InitECandidate.Proofs.BackendStages
