import InitECandidate.Proofs.BackendStages.Encoded720
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial720
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial720_eq : InitECandidate.Proofs.BackendStages.Encoded720 = Initial720 := by
  with_unfolding_all rfl
#print axioms Initial720_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
