import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded567
import InitECandidate.Proofs.BackendStages.ZeroData567
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets567_eq : Padded567.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys567 := by
  with_unfolding_all rfl
theorem zeroTargets567_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded567 acc = ZeroData.keys567.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets567_eq]
#print axioms zeroTargets567_eq
end InitECandidate.Proofs.BackendStages
