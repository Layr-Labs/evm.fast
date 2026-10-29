import InitECandidate.Proofs.BackendStages.Encoded812
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial812_eq : InitECandidate.Proofs.BackendStages.Encoded812 = Initial812 := by
  with_unfolding_all rfl
#print axioms Initial812_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
