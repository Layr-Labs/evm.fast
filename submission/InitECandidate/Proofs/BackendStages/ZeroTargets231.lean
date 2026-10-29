import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded231
import InitECandidate.Proofs.BackendStages.ZeroData231
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets231_eq : Padded231.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys231 := by
  with_unfolding_all rfl
theorem zeroTargets231_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded231 acc = ZeroData.keys231.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets231_eq]
#print axioms zeroTargets231_eq
end InitECandidate.Proofs.BackendStages
