import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded661
import InitECandidate.Proofs.BackendStages.ZeroData661
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets661_eq : Padded661.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys661 := by
  with_unfolding_all rfl
theorem zeroTargets661_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded661 acc = ZeroData.keys661.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets661_eq]
#print axioms zeroTargets661_eq
end InitECandidate.Proofs.BackendStages
