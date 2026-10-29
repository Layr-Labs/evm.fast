import InitECandidate.Proofs.BackendStages.Encoded581
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial581
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial581_eq : InitECandidate.Proofs.BackendStages.Encoded581 = Initial581 := by
  with_unfolding_all rfl
#print axioms Initial581_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
