import InitECandidate.Proofs.BackendStages.Encoded286
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial286
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial286_eq : InitECandidate.Proofs.BackendStages.Encoded286 = Initial286 := by
  with_unfolding_all rfl
#print axioms Initial286_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
