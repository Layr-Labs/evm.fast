import InitECandidate.Proofs.BackendStages.Encoded221
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial221
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial221_eq : InitECandidate.Proofs.BackendStages.Encoded221 = Initial221 := by
  with_unfolding_all rfl
#print axioms Initial221_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
