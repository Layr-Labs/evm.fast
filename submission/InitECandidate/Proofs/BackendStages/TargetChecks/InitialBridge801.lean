import InitECandidate.Proofs.BackendStages.Encoded801
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial801_eq : InitECandidate.Proofs.BackendStages.Encoded801 = Initial801 := by
  with_unfolding_all rfl
#print axioms Initial801_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
