import InitECandidate.Proofs.BackendStages.Encoded866
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial866
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial866_eq : InitECandidate.Proofs.BackendStages.Encoded866 = Initial866 := by
  with_unfolding_all rfl
#print axioms Initial866_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
