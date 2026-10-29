import InitECandidate.Proofs.BackendStages.Encoded622
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial622
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial622_eq : InitECandidate.Proofs.BackendStages.Encoded622 = Initial622 := by
  with_unfolding_all rfl
#print axioms Initial622_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
