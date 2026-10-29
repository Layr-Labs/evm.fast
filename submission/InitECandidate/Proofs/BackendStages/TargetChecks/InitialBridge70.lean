import InitECandidate.Proofs.BackendStages.Encoded70
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial70
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial70_eq : InitECandidate.Proofs.BackendStages.Encoded70 = Initial70 := by
  with_unfolding_all rfl
#print axioms Initial70_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
