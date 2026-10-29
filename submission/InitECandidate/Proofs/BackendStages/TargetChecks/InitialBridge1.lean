import InitECandidate.Proofs.BackendStages.Encoded1
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial1
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial1_eq : InitECandidate.Proofs.BackendStages.Encoded1 = Initial1 := by
  with_unfolding_all rfl
#print axioms Initial1_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
