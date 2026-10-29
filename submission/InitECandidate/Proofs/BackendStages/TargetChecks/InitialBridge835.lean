import InitECandidate.Proofs.BackendStages.Encoded835
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial835
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial835_eq : InitECandidate.Proofs.BackendStages.Encoded835 = Initial835 := by
  with_unfolding_all rfl
#print axioms Initial835_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
