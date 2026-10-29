import InitECandidate.Proofs.BackendStages.Encoded561
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial561
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial561_eq : InitECandidate.Proofs.BackendStages.Encoded561 = Initial561 := by
  with_unfolding_all rfl
#print axioms Initial561_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
