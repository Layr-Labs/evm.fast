import InitECandidate.Proofs.BackendStages.Encoded184
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial184
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial184_eq : InitECandidate.Proofs.BackendStages.Encoded184 = Initial184 := by
  with_unfolding_all rfl
#print axioms Initial184_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
