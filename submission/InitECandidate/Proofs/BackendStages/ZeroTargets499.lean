import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded499
import InitECandidate.Proofs.BackendStages.ZeroData499
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets499_eq : Padded499.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys499 := by
  with_unfolding_all rfl
theorem zeroTargets499_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded499 acc = ZeroData.keys499.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets499_eq]
#print axioms zeroTargets499_eq
end InitECandidate.Proofs.BackendStages
