import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded450
import InitECandidate.Proofs.BackendStages.ZeroData450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets450_eq : Padded450.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys450 := by
  with_unfolding_all rfl
theorem zeroTargets450_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded450 acc = ZeroData.keys450.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets450_eq]
#print axioms zeroTargets450_eq
end InitECandidate.Proofs.BackendStages
