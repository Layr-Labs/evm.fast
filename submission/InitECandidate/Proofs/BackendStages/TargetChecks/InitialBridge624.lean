import InitECandidate.Proofs.BackendStages.Encoded624
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial624
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial624_eq : InitECandidate.Proofs.BackendStages.Encoded624 = Initial624 := by
  with_unfolding_all rfl
#print axioms Initial624_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
