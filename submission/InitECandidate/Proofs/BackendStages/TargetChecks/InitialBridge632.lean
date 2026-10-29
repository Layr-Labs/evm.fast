import InitECandidate.Proofs.BackendStages.Encoded632
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial632_eq : InitECandidate.Proofs.BackendStages.Encoded632 = Initial632 := by
  with_unfolding_all rfl
#print axioms Initial632_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
