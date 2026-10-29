import InitECandidate.Proofs.BackendStages.Encoded72
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial72
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial72_eq : InitECandidate.Proofs.BackendStages.Encoded72 = Initial72 := by
  with_unfolding_all rfl
#print axioms Initial72_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
