import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded706
import InitECandidate.Proofs.BackendStages.ZeroData706
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets706_eq : Padded706.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys706 := by
  with_unfolding_all rfl
theorem zeroTargets706_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded706 acc = ZeroData.keys706.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets706_eq]
#print axioms zeroTargets706_eq
end InitECandidate.Proofs.BackendStages
