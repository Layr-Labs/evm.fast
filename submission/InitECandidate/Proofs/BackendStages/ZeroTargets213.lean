import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded213
import InitECandidate.Proofs.BackendStages.ZeroData213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets213_eq : Padded213.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys213 := by
  with_unfolding_all rfl
theorem zeroTargets213_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded213 acc = ZeroData.keys213.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets213_eq]
#print axioms zeroTargets213_eq
end InitECandidate.Proofs.BackendStages
