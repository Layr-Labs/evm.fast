import InitECandidate.Proofs.BackendStages.Encoded824
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial824
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial824_eq : InitECandidate.Proofs.BackendStages.Encoded824 = Initial824 := by
  with_unfolding_all rfl
#print axioms Initial824_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
