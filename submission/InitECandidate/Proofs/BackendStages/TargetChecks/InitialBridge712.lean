import InitECandidate.Proofs.BackendStages.Encoded712
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial712
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial712_eq : InitECandidate.Proofs.BackendStages.Encoded712 = Initial712 := by
  with_unfolding_all rfl
#print axioms Initial712_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
