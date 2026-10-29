import InitECandidate.Proofs.BackendStages.Encoded500
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial500
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial500_eq : InitECandidate.Proofs.BackendStages.Encoded500 = Initial500 := by
  with_unfolding_all rfl
#print axioms Initial500_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
