import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded778
import InitECandidate.Proofs.BackendStages.ZeroData778
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets778_eq : Padded778.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys778 := by
  with_unfolding_all rfl
theorem zeroTargets778_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded778 acc = ZeroData.keys778.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets778_eq]
#print axioms zeroTargets778_eq
end InitECandidate.Proofs.BackendStages
