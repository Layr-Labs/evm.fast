import InitECandidate.Proofs.BackendStages.Encoded180
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial180_eq : InitECandidate.Proofs.BackendStages.Encoded180 = Initial180 := by
  with_unfolding_all rfl
#print axioms Initial180_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
