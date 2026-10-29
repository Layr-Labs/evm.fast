import InitECandidate.Proofs.BackendStages.Encoded646
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial646
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial646_eq : InitECandidate.Proofs.BackendStages.Encoded646 = Initial646 := by
  with_unfolding_all rfl
#print axioms Initial646_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
