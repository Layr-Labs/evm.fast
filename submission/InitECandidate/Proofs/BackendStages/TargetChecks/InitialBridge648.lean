import InitECandidate.Proofs.BackendStages.Encoded648
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial648
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial648_eq : InitECandidate.Proofs.BackendStages.Encoded648 = Initial648 := by
  with_unfolding_all rfl
#print axioms Initial648_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
