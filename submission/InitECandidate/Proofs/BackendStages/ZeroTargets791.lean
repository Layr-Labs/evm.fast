import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded791
import InitECandidate.Proofs.BackendStages.ZeroData791
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets791_eq : Padded791.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys791 := by
  with_unfolding_all rfl
theorem zeroTargets791_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded791 acc = ZeroData.keys791.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets791_eq]
#print axioms zeroTargets791_eq
end InitECandidate.Proofs.BackendStages
