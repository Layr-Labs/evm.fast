import InitECandidate.Proofs.BackendStages.Encoded405
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial405
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial405_eq : InitECandidate.Proofs.BackendStages.Encoded405 = Initial405 := by
  with_unfolding_all rfl
#print axioms Initial405_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
