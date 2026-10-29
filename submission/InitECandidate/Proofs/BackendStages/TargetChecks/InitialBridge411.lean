import InitECandidate.Proofs.BackendStages.Encoded411
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial411
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial411_eq : InitECandidate.Proofs.BackendStages.Encoded411 = Initial411 := by
  with_unfolding_all rfl
#print axioms Initial411_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
