import InitECandidate.Proofs.BackendStages.Encoded245
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial245
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial245_eq : InitECandidate.Proofs.BackendStages.Encoded245 = Initial245 := by
  with_unfolding_all rfl
#print axioms Initial245_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
