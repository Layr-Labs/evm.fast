import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded399
import InitECandidate.Proofs.BackendStages.ZeroData399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets399_eq : Padded399.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys399 := by
  with_unfolding_all rfl
theorem zeroTargets399_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded399 acc = ZeroData.keys399.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets399_eq]
#print axioms zeroTargets399_eq
end InitECandidate.Proofs.BackendStages
