import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded514
import InitECandidate.Proofs.BackendStages.ZeroData514
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets514_eq : Padded514.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys514 := by
  with_unfolding_all rfl
theorem zeroTargets514_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded514 acc = ZeroData.keys514.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets514_eq]
#print axioms zeroTargets514_eq
end InitECandidate.Proofs.BackendStages
