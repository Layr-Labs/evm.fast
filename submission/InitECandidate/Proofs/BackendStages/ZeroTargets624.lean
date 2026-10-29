import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded624
import InitECandidate.Proofs.BackendStages.ZeroData624
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets624_eq : Padded624.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys624 := by
  with_unfolding_all rfl
theorem zeroTargets624_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded624 acc = ZeroData.keys624.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets624_eq]
#print axioms zeroTargets624_eq
end InitECandidate.Proofs.BackendStages
