import InitECandidate.Proofs.BackendStages.Encoded131
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial131_eq : InitECandidate.Proofs.BackendStages.Encoded131 = Initial131 := by
  with_unfolding_all rfl
#print axioms Initial131_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
