import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded563
import InitECandidate.Proofs.BackendStages.ZeroData563
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets563_eq : Padded563.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys563 := by
  with_unfolding_all rfl
theorem zeroTargets563_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded563 acc = ZeroData.keys563.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets563_eq]
#print axioms zeroTargets563_eq
end InitECandidate.Proofs.BackendStages
