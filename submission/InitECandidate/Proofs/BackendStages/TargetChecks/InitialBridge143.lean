import InitECandidate.Proofs.BackendStages.Encoded143
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial143
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial143_eq : InitECandidate.Proofs.BackendStages.Encoded143 = Initial143 := by
  with_unfolding_all rfl
#print axioms Initial143_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
