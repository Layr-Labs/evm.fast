import InitECandidate.Proofs.BackendStages.Encoded170
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial170
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial170_eq : InitECandidate.Proofs.BackendStages.Encoded170 = Initial170 := by
  with_unfolding_all rfl
#print axioms Initial170_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
