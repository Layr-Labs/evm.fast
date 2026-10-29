import InitECandidate.Proofs.BackendStages.Encoded432
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial432_eq : InitECandidate.Proofs.BackendStages.Encoded432 = Initial432 := by
  with_unfolding_all rfl
#print axioms Initial432_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
