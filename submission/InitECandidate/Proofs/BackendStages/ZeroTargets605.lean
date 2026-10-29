import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded605
import InitECandidate.Proofs.BackendStages.ZeroData605
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets605_eq : Padded605.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys605 := by
  with_unfolding_all rfl
theorem zeroTargets605_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded605 acc = ZeroData.keys605.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets605_eq]
#print axioms zeroTargets605_eq
end InitECandidate.Proofs.BackendStages
