import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded121
import InitECandidate.Proofs.BackendStages.ZeroData121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets121_eq : Padded121.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys121 := by
  with_unfolding_all rfl
theorem zeroTargets121_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded121 acc = ZeroData.keys121.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets121_eq]
#print axioms zeroTargets121_eq
end InitECandidate.Proofs.BackendStages
