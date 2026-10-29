import InitECandidate.Proofs.BackendStages.Encoded331
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial331
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial331_eq : InitECandidate.Proofs.BackendStages.Encoded331 = Initial331 := by
  with_unfolding_all rfl
#print axioms Initial331_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
