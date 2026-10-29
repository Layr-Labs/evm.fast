import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded389
import InitECandidate.Proofs.BackendStages.ZeroData389
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets389_eq : Padded389.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys389 := by
  with_unfolding_all rfl
theorem zeroTargets389_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded389 acc = ZeroData.keys389.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets389_eq]
#print axioms zeroTargets389_eq
end InitECandidate.Proofs.BackendStages
