import InitECandidate.Proofs.BackendStages.Encoded188
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial188
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial188_eq : InitECandidate.Proofs.BackendStages.Encoded188 = Initial188 := by
  with_unfolding_all rfl
#print axioms Initial188_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
