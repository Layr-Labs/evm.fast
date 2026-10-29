import InitECandidate.Proofs.BackendStages.Encoded565
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial565
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial565_eq : InitECandidate.Proofs.BackendStages.Encoded565 = Initial565 := by
  with_unfolding_all rfl
#print axioms Initial565_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
