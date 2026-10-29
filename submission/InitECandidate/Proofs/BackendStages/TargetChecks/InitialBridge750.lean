import InitECandidate.Proofs.BackendStages.Encoded750
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial750_eq : InitECandidate.Proofs.BackendStages.Encoded750 = Initial750 := by
  with_unfolding_all rfl
#print axioms Initial750_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
