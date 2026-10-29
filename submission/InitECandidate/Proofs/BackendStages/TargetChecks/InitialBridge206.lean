import InitECandidate.Proofs.BackendStages.Encoded206
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial206_eq : InitECandidate.Proofs.BackendStages.Encoded206 = Initial206 := by
  with_unfolding_all rfl
#print axioms Initial206_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
