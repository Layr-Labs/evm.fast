import InitECandidate.Proofs.BackendStages.Encoded330
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial330
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial330_eq : InitECandidate.Proofs.BackendStages.Encoded330 = Initial330 := by
  with_unfolding_all rfl
#print axioms Initial330_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
