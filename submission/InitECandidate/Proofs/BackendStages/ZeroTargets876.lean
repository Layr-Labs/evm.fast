import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded876
import InitECandidate.Proofs.BackendStages.ZeroData876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets876_eq : Padded876.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys876 := by
  with_unfolding_all rfl
theorem zeroTargets876_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded876 acc = ZeroData.keys876.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets876_eq]
#print axioms zeroTargets876_eq
end InitECandidate.Proofs.BackendStages
