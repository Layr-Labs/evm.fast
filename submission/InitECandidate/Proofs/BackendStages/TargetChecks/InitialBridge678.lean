import InitECandidate.Proofs.BackendStages.Encoded678
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial678
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial678_eq : InitECandidate.Proofs.BackendStages.Encoded678 = Initial678 := by
  with_unfolding_all rfl
#print axioms Initial678_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
