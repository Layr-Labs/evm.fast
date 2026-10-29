import InitECandidate.Proofs.BackendStages.Encoded602
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial602
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial602_eq : InitECandidate.Proofs.BackendStages.Encoded602 = Initial602 := by
  with_unfolding_all rfl
#print axioms Initial602_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
