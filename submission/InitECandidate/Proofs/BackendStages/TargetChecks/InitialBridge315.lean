import InitECandidate.Proofs.BackendStages.Encoded315
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial315
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial315_eq : InitECandidate.Proofs.BackendStages.Encoded315 = Initial315 := by
  with_unfolding_all rfl
#print axioms Initial315_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
