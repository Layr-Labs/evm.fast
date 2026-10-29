import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded310
import InitECandidate.Proofs.BackendStages.ZeroData310
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets310_eq : Padded310.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys310 := by
  with_unfolding_all rfl
theorem zeroTargets310_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded310 acc = ZeroData.keys310.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets310_eq]
#print axioms zeroTargets310_eq
end InitECandidate.Proofs.BackendStages
