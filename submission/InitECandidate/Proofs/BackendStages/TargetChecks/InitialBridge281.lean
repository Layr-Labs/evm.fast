import InitECandidate.Proofs.BackendStages.Encoded281
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial281_eq : InitECandidate.Proofs.BackendStages.Encoded281 = Initial281 := by
  with_unfolding_all rfl
#print axioms Initial281_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
