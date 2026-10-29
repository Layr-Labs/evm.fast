import InitECandidate.Proofs.BackendStages.Encoded137
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial137
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial137_eq : InitECandidate.Proofs.BackendStages.Encoded137 = Initial137 := by
  with_unfolding_all rfl
#print axioms Initial137_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
