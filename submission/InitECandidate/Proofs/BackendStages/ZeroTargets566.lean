import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded566
import InitECandidate.Proofs.BackendStages.ZeroData566
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets566_eq : Padded566.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys566 := by
  with_unfolding_all rfl
theorem zeroTargets566_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded566 acc = ZeroData.keys566.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets566_eq]
#print axioms zeroTargets566_eq
end InitECandidate.Proofs.BackendStages
