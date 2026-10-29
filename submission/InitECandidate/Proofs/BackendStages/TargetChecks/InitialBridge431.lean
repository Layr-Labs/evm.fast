import InitECandidate.Proofs.BackendStages.Encoded431
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial431_eq : InitECandidate.Proofs.BackendStages.Encoded431 = Initial431 := by
  with_unfolding_all rfl
#print axioms Initial431_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
