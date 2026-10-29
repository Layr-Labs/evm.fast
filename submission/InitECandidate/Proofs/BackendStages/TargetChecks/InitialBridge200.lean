import InitECandidate.Proofs.BackendStages.Encoded200
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial200_eq : InitECandidate.Proofs.BackendStages.Encoded200 = Initial200 := by
  with_unfolding_all rfl
#print axioms Initial200_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
