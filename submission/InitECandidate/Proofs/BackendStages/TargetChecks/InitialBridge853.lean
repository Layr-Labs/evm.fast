import InitECandidate.Proofs.BackendStages.Encoded853
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial853
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial853_eq : InitECandidate.Proofs.BackendStages.Encoded853 = Initial853 := by
  with_unfolding_all rfl
#print axioms Initial853_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
