import InitECandidate.Proofs.BackendStages.Encoded371
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial371_eq : InitECandidate.Proofs.BackendStages.Encoded371 = Initial371 := by
  with_unfolding_all rfl
#print axioms Initial371_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
