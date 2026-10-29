import InitECandidate.Proofs.BackendStages.Encoded837
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial837
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial837_eq : InitECandidate.Proofs.BackendStages.Encoded837 = Initial837 := by
  with_unfolding_all rfl
#print axioms Initial837_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
