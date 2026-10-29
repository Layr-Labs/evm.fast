import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded837
import InitECandidate.Proofs.BackendStages.ZeroData837
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets837_eq : Padded837.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys837 := by
  with_unfolding_all rfl
theorem zeroTargets837_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded837 acc = ZeroData.keys837.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets837_eq]
#print axioms zeroTargets837_eq
end InitECandidate.Proofs.BackendStages
