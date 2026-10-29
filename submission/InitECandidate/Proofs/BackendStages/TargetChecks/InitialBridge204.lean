import InitECandidate.Proofs.BackendStages.Encoded204
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial204_eq : InitECandidate.Proofs.BackendStages.Encoded204 = Initial204 := by
  with_unfolding_all rfl
#print axioms Initial204_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
