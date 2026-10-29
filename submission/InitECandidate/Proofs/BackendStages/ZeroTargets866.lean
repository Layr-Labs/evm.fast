import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded866
import InitECandidate.Proofs.BackendStages.ZeroData866
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets866_eq : Padded866.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys866 := by
  with_unfolding_all rfl
theorem zeroTargets866_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded866 acc = ZeroData.keys866.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets866_eq]
#print axioms zeroTargets866_eq
end InitECandidate.Proofs.BackendStages
