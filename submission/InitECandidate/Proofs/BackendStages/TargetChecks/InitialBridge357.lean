import InitECandidate.Proofs.BackendStages.Encoded357
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial357
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial357_eq : InitECandidate.Proofs.BackendStages.Encoded357 = Initial357 := by
  with_unfolding_all rfl
#print axioms Initial357_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
