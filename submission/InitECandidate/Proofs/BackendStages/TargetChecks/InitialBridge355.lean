import InitECandidate.Proofs.BackendStages.Encoded355
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial355
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial355_eq : InitECandidate.Proofs.BackendStages.Encoded355 = Initial355 := by
  with_unfolding_all rfl
#print axioms Initial355_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
