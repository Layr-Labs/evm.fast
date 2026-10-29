import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded631
import InitECandidate.Proofs.BackendStages.ZeroData631
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets631_eq : Padded631.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys631 := by
  with_unfolding_all rfl
theorem zeroTargets631_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded631 acc = ZeroData.keys631.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets631_eq]
#print axioms zeroTargets631_eq
end InitECandidate.Proofs.BackendStages
