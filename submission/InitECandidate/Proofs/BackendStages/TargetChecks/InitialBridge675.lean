import InitECandidate.Proofs.BackendStages.Encoded675
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial675_eq : InitECandidate.Proofs.BackendStages.Encoded675 = Initial675 := by
  with_unfolding_all rfl
#print axioms Initial675_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
