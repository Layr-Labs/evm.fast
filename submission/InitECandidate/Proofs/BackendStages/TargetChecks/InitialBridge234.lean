import InitECandidate.Proofs.BackendStages.Encoded234
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial234_eq : InitECandidate.Proofs.BackendStages.Encoded234 = Initial234 := by
  with_unfolding_all rfl
#print axioms Initial234_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
