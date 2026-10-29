import InitECandidate.Proofs.BackendStages.Encoded261
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial261
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial261_eq : InitECandidate.Proofs.BackendStages.Encoded261 = Initial261 := by
  with_unfolding_all rfl
#print axioms Initial261_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
