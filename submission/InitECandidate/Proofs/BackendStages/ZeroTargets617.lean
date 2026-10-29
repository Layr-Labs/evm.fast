import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded617
import InitECandidate.Proofs.BackendStages.ZeroData617
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets617_eq : Padded617.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys617 := by
  with_unfolding_all rfl
theorem zeroTargets617_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded617 acc = ZeroData.keys617.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets617_eq]
#print axioms zeroTargets617_eq
end InitECandidate.Proofs.BackendStages
