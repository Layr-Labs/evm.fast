import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded574
import InitECandidate.Proofs.BackendStages.ZeroData574
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets574_eq : Padded574.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys574 := by
  with_unfolding_all rfl
theorem zeroTargets574_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded574 acc = ZeroData.keys574.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets574_eq]
#print axioms zeroTargets574_eq
end InitECandidate.Proofs.BackendStages
