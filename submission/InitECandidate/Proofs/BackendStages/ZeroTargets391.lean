import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded391
import InitECandidate.Proofs.BackendStages.ZeroData391
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets391_eq : Padded391.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys391 := by
  with_unfolding_all rfl
theorem zeroTargets391_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded391 acc = ZeroData.keys391.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets391_eq]
#print axioms zeroTargets391_eq
end InitECandidate.Proofs.BackendStages
