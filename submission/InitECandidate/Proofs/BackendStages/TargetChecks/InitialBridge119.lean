import InitECandidate.Proofs.BackendStages.Encoded119
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial119
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial119_eq : InitECandidate.Proofs.BackendStages.Encoded119 = Initial119 := by
  with_unfolding_all rfl
#print axioms Initial119_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
