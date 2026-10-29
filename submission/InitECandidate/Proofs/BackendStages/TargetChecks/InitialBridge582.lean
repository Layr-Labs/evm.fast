import InitECandidate.Proofs.BackendStages.Encoded582
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial582
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial582_eq : InitECandidate.Proofs.BackendStages.Encoded582 = Initial582 := by
  with_unfolding_all rfl
#print axioms Initial582_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
