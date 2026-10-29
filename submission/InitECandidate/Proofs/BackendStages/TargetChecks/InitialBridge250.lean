import InitECandidate.Proofs.BackendStages.Encoded250
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial250
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial250_eq : InitECandidate.Proofs.BackendStages.Encoded250 = Initial250 := by
  with_unfolding_all rfl
#print axioms Initial250_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
