import InitECandidate.Proofs.BackendStages.Encoded400
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial400_eq : InitECandidate.Proofs.BackendStages.Encoded400 = Initial400 := by
  with_unfolding_all rfl
#print axioms Initial400_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
