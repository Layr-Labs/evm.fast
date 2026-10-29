import InitECandidate.Proofs.BackendStages.Encoded433
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial433
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial433_eq : InitECandidate.Proofs.BackendStages.Encoded433 = Initial433 := by
  with_unfolding_all rfl
#print axioms Initial433_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
