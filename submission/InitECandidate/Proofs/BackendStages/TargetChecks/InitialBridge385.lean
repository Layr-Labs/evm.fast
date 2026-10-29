import InitECandidate.Proofs.BackendStages.Encoded385
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial385
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial385_eq : InitECandidate.Proofs.BackendStages.Encoded385 = Initial385 := by
  with_unfolding_all rfl
#print axioms Initial385_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
