import InitECandidate.Proofs.BackendStages.Encoded290
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial290
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial290_eq : InitECandidate.Proofs.BackendStages.Encoded290 = Initial290 := by
  with_unfolding_all rfl
#print axioms Initial290_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
