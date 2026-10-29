import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded838
import InitECandidate.Proofs.BackendStages.ZeroData838
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets838_eq : Padded838.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys838 := by
  with_unfolding_all rfl
theorem zeroTargets838_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded838 acc = ZeroData.keys838.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets838_eq]
#print axioms zeroTargets838_eq
end InitECandidate.Proofs.BackendStages
