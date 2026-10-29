import InitECandidate.Proofs.BackendStages.Encoded413
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial413
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial413_eq : InitECandidate.Proofs.BackendStages.Encoded413 = Initial413 := by
  with_unfolding_all rfl
#print axioms Initial413_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
