import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded170
import InitECandidate.Proofs.BackendStages.ZeroData170
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets170_eq : Padded170.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys170 := by
  with_unfolding_all rfl
theorem zeroTargets170_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded170 acc = ZeroData.keys170.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets170_eq]
#print axioms zeroTargets170_eq
end InitECandidate.Proofs.BackendStages
