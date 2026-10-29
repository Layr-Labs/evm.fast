import InitECandidate.Proofs.BackendStages.Encoded310
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial310
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial310_eq : InitECandidate.Proofs.BackendStages.Encoded310 = Initial310 := by
  with_unfolding_all rfl
#print axioms Initial310_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
