import InitECandidate.Proofs.BackendStages.Encoded576
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial576_eq : InitECandidate.Proofs.BackendStages.Encoded576 = Initial576 := by
  with_unfolding_all rfl
#print axioms Initial576_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
