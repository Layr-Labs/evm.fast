import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded598
import InitECandidate.Proofs.BackendStages.ZeroData598
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets598_eq : Padded598.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys598 := by
  with_unfolding_all rfl
theorem zeroTargets598_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded598 acc = ZeroData.keys598.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets598_eq]
#print axioms zeroTargets598_eq
end InitECandidate.Proofs.BackendStages
