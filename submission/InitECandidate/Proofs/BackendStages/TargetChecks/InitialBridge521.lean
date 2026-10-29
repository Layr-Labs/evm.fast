import InitECandidate.Proofs.BackendStages.Encoded521
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial521
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial521_eq : InitECandidate.Proofs.BackendStages.Encoded521 = Initial521 := by
  with_unfolding_all rfl
#print axioms Initial521_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
