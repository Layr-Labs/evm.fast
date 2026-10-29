import InitECandidate.Proofs.BackendStages.Encoded102
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial102
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial102_eq : InitECandidate.Proofs.BackendStages.Encoded102 = Initial102 := by
  with_unfolding_all rfl
#print axioms Initial102_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
