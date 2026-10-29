import InitECandidate.Proofs.BackendStages.Encoded488
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial488_eq : InitECandidate.Proofs.BackendStages.Encoded488 = Initial488 := by
  with_unfolding_all rfl
#print axioms Initial488_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
