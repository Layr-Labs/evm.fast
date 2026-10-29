import InitECandidate.Proofs.BackendStages.Encoded481
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial481_eq : InitECandidate.Proofs.BackendStages.Encoded481 = Initial481 := by
  with_unfolding_all rfl
#print axioms Initial481_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
