import InitECandidate.Proofs.BackendStages.Encoded425
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial425
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial425_eq : InitECandidate.Proofs.BackendStages.Encoded425 = Initial425 := by
  with_unfolding_all rfl
#print axioms Initial425_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
