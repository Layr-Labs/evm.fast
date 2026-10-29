import InitECandidate.Proofs.BackendStages.Encoded183
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial183_eq : InitECandidate.Proofs.BackendStages.Encoded183 = Initial183 := by
  with_unfolding_all rfl
#print axioms Initial183_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
