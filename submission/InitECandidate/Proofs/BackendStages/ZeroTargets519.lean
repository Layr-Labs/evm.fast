import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded519
import InitECandidate.Proofs.BackendStages.ZeroData519
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets519_eq : Padded519.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys519 := by
  with_unfolding_all rfl
theorem zeroTargets519_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded519 acc = ZeroData.keys519.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets519_eq]
#print axioms zeroTargets519_eq
end InitECandidate.Proofs.BackendStages
