import InitECandidate.Proofs.BackendStages.Encoded213
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial213_eq : InitECandidate.Proofs.BackendStages.Encoded213 = Initial213 := by
  with_unfolding_all rfl
#print axioms Initial213_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
