import InitECandidate.Proofs.BackendStages.Encoded146
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial146_eq : InitECandidate.Proofs.BackendStages.Encoded146 = Initial146 := by
  with_unfolding_all rfl
#print axioms Initial146_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
