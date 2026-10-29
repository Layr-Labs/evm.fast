import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded583
import InitECandidate.Proofs.BackendStages.ZeroData583
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets583_eq : Padded583.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys583 := by
  with_unfolding_all rfl
theorem zeroTargets583_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded583 acc = ZeroData.keys583.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets583_eq]
#print axioms zeroTargets583_eq
end InitECandidate.Proofs.BackendStages
