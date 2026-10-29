import InitECandidate.Proofs.BackendStages.Encoded740
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial740
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial740_eq : InitECandidate.Proofs.BackendStages.Encoded740 = Initial740 := by
  with_unfolding_all rfl
#print axioms Initial740_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
