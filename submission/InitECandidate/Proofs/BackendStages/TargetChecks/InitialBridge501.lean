import InitECandidate.Proofs.BackendStages.Encoded501
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial501
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial501_eq : InitECandidate.Proofs.BackendStages.Encoded501 = Initial501 := by
  with_unfolding_all rfl
#print axioms Initial501_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
