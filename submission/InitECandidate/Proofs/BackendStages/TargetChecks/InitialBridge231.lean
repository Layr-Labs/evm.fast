import InitECandidate.Proofs.BackendStages.Encoded231
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial231
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial231_eq : InitECandidate.Proofs.BackendStages.Encoded231 = Initial231 := by
  with_unfolding_all rfl
#print axioms Initial231_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
