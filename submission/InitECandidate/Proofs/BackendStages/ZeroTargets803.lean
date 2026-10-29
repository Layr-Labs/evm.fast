import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded803
import InitECandidate.Proofs.BackendStages.ZeroData803
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets803_eq : Padded803.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys803 := by
  with_unfolding_all rfl
theorem zeroTargets803_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded803 acc = ZeroData.keys803.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets803_eq]
#print axioms zeroTargets803_eq
end InitECandidate.Proofs.BackendStages
