import InitECandidate.Proofs.BackendStages.Encoded876
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial876_eq : InitECandidate.Proofs.BackendStages.Encoded876 = Initial876 := by
  with_unfolding_all rfl
#print axioms Initial876_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
