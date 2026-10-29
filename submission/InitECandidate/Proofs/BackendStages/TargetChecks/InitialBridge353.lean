import InitECandidate.Proofs.BackendStages.Encoded353
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial353
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial353_eq : InitECandidate.Proofs.BackendStages.Encoded353 = Initial353 := by
  with_unfolding_all rfl
#print axioms Initial353_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
