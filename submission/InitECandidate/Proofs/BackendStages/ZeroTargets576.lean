import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded576
import InitECandidate.Proofs.BackendStages.ZeroData576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets576_eq : Padded576.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys576 := by
  with_unfolding_all rfl
theorem zeroTargets576_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded576 acc = ZeroData.keys576.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets576_eq]
#print axioms zeroTargets576_eq
end InitECandidate.Proofs.BackendStages
