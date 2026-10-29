import InitECandidate.Proofs.BackendStages.Encoded570
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial570_eq : InitECandidate.Proofs.BackendStages.Encoded570 = Initial570 := by
  with_unfolding_all rfl
#print axioms Initial570_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
