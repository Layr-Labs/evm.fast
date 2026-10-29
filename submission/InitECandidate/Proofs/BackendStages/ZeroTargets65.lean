import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded65
import InitECandidate.Proofs.BackendStages.ZeroData65
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets65_eq : Padded65.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys65 := by
  with_unfolding_all rfl
theorem zeroTargets65_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded65 acc = ZeroData.keys65.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets65_eq]
#print axioms zeroTargets65_eq
end InitECandidate.Proofs.BackendStages
