import InitECandidate.Proofs.BackendStages.Encoded175
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial175_eq : InitECandidate.Proofs.BackendStages.Encoded175 = Initial175 := by
  with_unfolding_all rfl
#print axioms Initial175_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
