import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded247
import InitECandidate.Proofs.BackendStages.ZeroData247
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets247_eq : Padded247.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys247 := by
  with_unfolding_all rfl
theorem zeroTargets247_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded247 acc = ZeroData.keys247.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets247_eq]
#print axioms zeroTargets247_eq
end InitECandidate.Proofs.BackendStages
