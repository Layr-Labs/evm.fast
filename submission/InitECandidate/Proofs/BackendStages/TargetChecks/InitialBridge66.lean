import InitECandidate.Proofs.BackendStages.Encoded66
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial66
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial66_eq : InitECandidate.Proofs.BackendStages.Encoded66 = Initial66 := by
  with_unfolding_all rfl
#print axioms Initial66_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
