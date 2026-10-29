import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded256
import InitECandidate.Proofs.BackendStages.ZeroData256
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets256_eq : Padded256.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys256 := by
  with_unfolding_all rfl
theorem zeroTargets256_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded256 acc = ZeroData.keys256.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets256_eq]
#print axioms zeroTargets256_eq
end InitECandidate.Proofs.BackendStages
