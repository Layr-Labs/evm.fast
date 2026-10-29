import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded750
import InitECandidate.Proofs.BackendStages.ZeroData750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets750_eq : Padded750.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys750 := by
  with_unfolding_all rfl
theorem zeroTargets750_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded750 acc = ZeroData.keys750.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets750_eq]
#print axioms zeroTargets750_eq
end InitECandidate.Proofs.BackendStages
