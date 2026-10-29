import InitECandidate.Proofs.BackendStages.Encoded256
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial256
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial256_eq : InitECandidate.Proofs.BackendStages.Encoded256 = Initial256 := by
  with_unfolding_all rfl
#print axioms Initial256_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
