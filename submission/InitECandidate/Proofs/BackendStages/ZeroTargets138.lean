import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded138
import InitECandidate.Proofs.BackendStages.ZeroData138
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets138_eq : Padded138.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys138 := by
  with_unfolding_all rfl
theorem zeroTargets138_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded138 acc = ZeroData.keys138.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets138_eq]
#print axioms zeroTargets138_eq
end InitECandidate.Proofs.BackendStages
