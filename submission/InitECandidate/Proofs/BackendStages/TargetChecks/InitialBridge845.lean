import InitECandidate.Proofs.BackendStages.Encoded845
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial845
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial845_eq : InitECandidate.Proofs.BackendStages.Encoded845 = Initial845 := by
  with_unfolding_all rfl
#print axioms Initial845_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
