import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded76
import InitECandidate.Proofs.BackendStages.ZeroData76
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets76_eq : Padded76.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys76 := by
  with_unfolding_all rfl
theorem zeroTargets76_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded76 acc = ZeroData.keys76.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets76_eq]
#print axioms zeroTargets76_eq
end InitECandidate.Proofs.BackendStages
