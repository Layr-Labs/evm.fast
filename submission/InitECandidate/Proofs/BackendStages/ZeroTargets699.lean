import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded699
import InitECandidate.Proofs.BackendStages.ZeroData699
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets699_eq : Padded699.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys699 := by
  with_unfolding_all rfl
theorem zeroTargets699_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded699 acc = ZeroData.keys699.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets699_eq]
#print axioms zeroTargets699_eq
end InitECandidate.Proofs.BackendStages
