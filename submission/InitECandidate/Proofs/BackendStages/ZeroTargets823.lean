import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded823
import InitECandidate.Proofs.BackendStages.ZeroData823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets823_eq : Padded823.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys823 := by
  with_unfolding_all rfl
theorem zeroTargets823_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded823 acc = ZeroData.keys823.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets823_eq]
#print axioms zeroTargets823_eq
end InitECandidate.Proofs.BackendStages
