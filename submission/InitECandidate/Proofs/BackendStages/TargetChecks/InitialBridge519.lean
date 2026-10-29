import InitECandidate.Proofs.BackendStages.Encoded519
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial519
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial519_eq : InitECandidate.Proofs.BackendStages.Encoded519 = Initial519 := by
  with_unfolding_all rfl
#print axioms Initial519_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
