import InitECandidate.Proofs.BackendStages.Encoded76
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial76
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial76_eq : InitECandidate.Proofs.BackendStages.Encoded76 = Initial76 := by
  with_unfolding_all rfl
#print axioms Initial76_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
