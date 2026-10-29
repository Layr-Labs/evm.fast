import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded483
import InitECandidate.Proofs.BackendStages.ZeroData483
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets483_eq : Padded483.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys483 := by
  with_unfolding_all rfl
theorem zeroTargets483_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded483 acc = ZeroData.keys483.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets483_eq]
#print axioms zeroTargets483_eq
end InitECandidate.Proofs.BackendStages
