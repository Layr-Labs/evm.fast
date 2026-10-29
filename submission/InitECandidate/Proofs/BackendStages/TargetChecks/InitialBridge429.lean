import InitECandidate.Proofs.BackendStages.Encoded429
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial429
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial429_eq : InitECandidate.Proofs.BackendStages.Encoded429 = Initial429 := by
  with_unfolding_all rfl
#print axioms Initial429_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
