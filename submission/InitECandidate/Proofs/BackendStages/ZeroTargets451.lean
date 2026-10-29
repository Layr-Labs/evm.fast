import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded451
import InitECandidate.Proofs.BackendStages.ZeroData451
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets451_eq : Padded451.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys451 := by
  with_unfolding_all rfl
theorem zeroTargets451_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded451 acc = ZeroData.keys451.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets451_eq]
#print axioms zeroTargets451_eq
end InitECandidate.Proofs.BackendStages
