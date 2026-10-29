import InitECandidate.Proofs.BackendStages.Encoded640
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial640
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial640_eq : InitECandidate.Proofs.BackendStages.Encoded640 = Initial640 := by
  with_unfolding_all rfl
#print axioms Initial640_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
