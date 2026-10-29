import InitECandidate.Proofs.BackendStages.Encoded165
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial165_eq : InitECandidate.Proofs.BackendStages.Encoded165 = Initial165 := by
  with_unfolding_all rfl
#print axioms Initial165_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
