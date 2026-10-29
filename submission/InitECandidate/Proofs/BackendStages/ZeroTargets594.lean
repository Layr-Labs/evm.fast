import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded594
import InitECandidate.Proofs.BackendStages.ZeroData594
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets594_eq : Padded594.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys594 := by
  with_unfolding_all rfl
theorem zeroTargets594_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded594 acc = ZeroData.keys594.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets594_eq]
#print axioms zeroTargets594_eq
end InitECandidate.Proofs.BackendStages
