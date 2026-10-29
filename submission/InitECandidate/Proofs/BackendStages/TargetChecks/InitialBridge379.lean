import InitECandidate.Proofs.BackendStages.Encoded379
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial379
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial379_eq : InitECandidate.Proofs.BackendStages.Encoded379 = Initial379 := by
  with_unfolding_all rfl
#print axioms Initial379_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
