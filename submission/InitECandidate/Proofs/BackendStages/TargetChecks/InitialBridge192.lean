import InitECandidate.Proofs.BackendStages.Encoded192
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial192_eq : InitECandidate.Proofs.BackendStages.Encoded192 = Initial192 := by
  with_unfolding_all rfl
#print axioms Initial192_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
