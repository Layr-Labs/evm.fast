import InitECandidate.Proofs.BackendStages.Encoded680
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial680
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial680_eq : InitECandidate.Proofs.BackendStages.Encoded680 = Initial680 := by
  with_unfolding_all rfl
#print axioms Initial680_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
