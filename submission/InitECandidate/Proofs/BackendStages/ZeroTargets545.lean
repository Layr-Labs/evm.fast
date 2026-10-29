import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded545
import InitECandidate.Proofs.BackendStages.ZeroData545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets545_eq : Padded545.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys545 := by
  with_unfolding_all rfl
theorem zeroTargets545_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded545 acc = ZeroData.keys545.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets545_eq]
#print axioms zeroTargets545_eq
end InitECandidate.Proofs.BackendStages
