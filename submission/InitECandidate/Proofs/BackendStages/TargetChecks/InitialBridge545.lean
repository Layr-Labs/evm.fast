import InitECandidate.Proofs.BackendStages.Encoded545
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial545_eq : InitECandidate.Proofs.BackendStages.Encoded545 = Initial545 := by
  with_unfolding_all rfl
#print axioms Initial545_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
