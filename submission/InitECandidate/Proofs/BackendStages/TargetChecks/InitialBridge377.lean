import InitECandidate.Proofs.BackendStages.Encoded377
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial377
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial377_eq : InitECandidate.Proofs.BackendStages.Encoded377 = Initial377 := by
  with_unfolding_all rfl
#print axioms Initial377_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
