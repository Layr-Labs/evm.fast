import InitECandidate.Proofs.BackendStages.Encoded160
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial160
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial160_eq : InitECandidate.Proofs.BackendStages.Encoded160 = Initial160 := by
  with_unfolding_all rfl
#print axioms Initial160_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
