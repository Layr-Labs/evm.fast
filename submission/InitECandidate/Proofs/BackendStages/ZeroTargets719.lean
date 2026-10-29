import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded719
import InitECandidate.Proofs.BackendStages.ZeroData719
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets719_eq : Padded719.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys719 := by
  with_unfolding_all rfl
theorem zeroTargets719_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded719 acc = ZeroData.keys719.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets719_eq]
#print axioms zeroTargets719_eq
end InitECandidate.Proofs.BackendStages
