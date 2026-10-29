import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded682
import InitECandidate.Proofs.BackendStages.ZeroData682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets682_eq : Padded682.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys682 := by
  with_unfolding_all rfl
theorem zeroTargets682_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded682 acc = ZeroData.keys682.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets682_eq]
#print axioms zeroTargets682_eq
end InitECandidate.Proofs.BackendStages
