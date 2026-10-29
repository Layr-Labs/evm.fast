import InitECandidate.Proofs.BackendStages.Encoded820
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial820_eq : InitECandidate.Proofs.BackendStages.Encoded820 = Initial820 := by
  with_unfolding_all rfl
#print axioms Initial820_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
