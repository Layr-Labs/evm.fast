import InitECandidate.Proofs.BackendStages.Encoded822
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial822
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial822_eq : InitECandidate.Proofs.BackendStages.Encoded822 = Initial822 := by
  with_unfolding_all rfl
#print axioms Initial822_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
