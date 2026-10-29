import InitECandidate.Proofs.BackendStages.Encoded120
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial120
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial120_eq : InitECandidate.Proofs.BackendStages.Encoded120 = Initial120 := by
  with_unfolding_all rfl
#print axioms Initial120_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
