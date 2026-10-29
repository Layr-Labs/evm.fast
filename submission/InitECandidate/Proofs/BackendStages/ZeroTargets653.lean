import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded653
import InitECandidate.Proofs.BackendStages.ZeroData653
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets653_eq : Padded653.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys653 := by
  with_unfolding_all rfl
theorem zeroTargets653_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded653 acc = ZeroData.keys653.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets653_eq]
#print axioms zeroTargets653_eq
end InitECandidate.Proofs.BackendStages
