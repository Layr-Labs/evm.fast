import InitECandidate.Proofs.BackendStages.Encoded638
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial638_eq : InitECandidate.Proofs.BackendStages.Encoded638 = Initial638 := by
  with_unfolding_all rfl
#print axioms Initial638_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
