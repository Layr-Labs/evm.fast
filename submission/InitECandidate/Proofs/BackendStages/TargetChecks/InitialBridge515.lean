import InitECandidate.Proofs.BackendStages.Encoded515
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial515
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial515_eq : InitECandidate.Proofs.BackendStages.Encoded515 = Initial515 := by
  with_unfolding_all rfl
#print axioms Initial515_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
