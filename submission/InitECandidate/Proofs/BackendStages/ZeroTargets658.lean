import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded658
import InitECandidate.Proofs.BackendStages.ZeroData658
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets658_eq : Padded658.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys658 := by
  with_unfolding_all rfl
theorem zeroTargets658_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded658 acc = ZeroData.keys658.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets658_eq]
#print axioms zeroTargets658_eq
end InitECandidate.Proofs.BackendStages
