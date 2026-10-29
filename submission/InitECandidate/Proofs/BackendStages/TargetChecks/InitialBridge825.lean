import InitECandidate.Proofs.BackendStages.Encoded825
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial825
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial825_eq : InitECandidate.Proofs.BackendStages.Encoded825 = Initial825 := by
  with_unfolding_all rfl
#print axioms Initial825_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
