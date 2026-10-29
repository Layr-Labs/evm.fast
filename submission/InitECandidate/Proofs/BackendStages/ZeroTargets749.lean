import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded749
import InitECandidate.Proofs.BackendStages.ZeroData749
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets749_eq : Padded749.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys749 := by
  with_unfolding_all rfl
theorem zeroTargets749_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded749 acc = ZeroData.keys749.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets749_eq]
#print axioms zeroTargets749_eq
end InitECandidate.Proofs.BackendStages
