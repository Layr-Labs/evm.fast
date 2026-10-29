import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded510
import InitECandidate.Proofs.BackendStages.ZeroData510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets510_eq : Padded510.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys510 := by
  with_unfolding_all rfl
theorem zeroTargets510_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded510 acc = ZeroData.keys510.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets510_eq]
#print axioms zeroTargets510_eq
end InitECandidate.Proofs.BackendStages
