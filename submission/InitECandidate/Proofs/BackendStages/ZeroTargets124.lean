import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded124
import InitECandidate.Proofs.BackendStages.ZeroData124
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets124_eq : Padded124.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys124 := by
  with_unfolding_all rfl
theorem zeroTargets124_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded124 acc = ZeroData.keys124.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets124_eq]
#print axioms zeroTargets124_eq
end InitECandidate.Proofs.BackendStages
