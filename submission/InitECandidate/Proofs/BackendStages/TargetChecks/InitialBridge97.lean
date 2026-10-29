import InitECandidate.Proofs.BackendStages.Encoded97
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial97
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial97_eq : InitECandidate.Proofs.BackendStages.Encoded97 = Initial97 := by
  with_unfolding_all rfl
#print axioms Initial97_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
