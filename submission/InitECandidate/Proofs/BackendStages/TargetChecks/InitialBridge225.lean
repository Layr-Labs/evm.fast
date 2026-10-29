import InitECandidate.Proofs.BackendStages.Encoded225
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial225
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial225_eq : InitECandidate.Proofs.BackendStages.Encoded225 = Initial225 := by
  with_unfolding_all rfl
#print axioms Initial225_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
