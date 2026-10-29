import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded726
import InitECandidate.Proofs.BackendStages.ZeroData726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets726_eq : Padded726.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys726 := by
  with_unfolding_all rfl
theorem zeroTargets726_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded726 acc = ZeroData.keys726.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets726_eq]
#print axioms zeroTargets726_eq
end InitECandidate.Proofs.BackendStages
