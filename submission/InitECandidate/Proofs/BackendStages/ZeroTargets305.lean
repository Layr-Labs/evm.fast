import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded305
import InitECandidate.Proofs.BackendStages.ZeroData305
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets305_eq : Padded305.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys305 := by
  with_unfolding_all rfl
theorem zeroTargets305_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded305 acc = ZeroData.keys305.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets305_eq]
#print axioms zeroTargets305_eq
end InitECandidate.Proofs.BackendStages
