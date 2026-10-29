import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded87
import InitECandidate.Proofs.BackendStages.ZeroData87
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets87_eq : Padded87.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys87 := by
  with_unfolding_all rfl
theorem zeroTargets87_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded87 acc = ZeroData.keys87.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets87_eq]
#print axioms zeroTargets87_eq
end InitECandidate.Proofs.BackendStages
