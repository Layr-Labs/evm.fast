import InitECandidate.Proofs.BackendStages.Encoded301
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial301_eq : InitECandidate.Proofs.BackendStages.Encoded301 = Initial301 := by
  with_unfolding_all rfl
#print axioms Initial301_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
