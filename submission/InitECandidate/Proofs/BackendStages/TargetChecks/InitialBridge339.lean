import InitECandidate.Proofs.BackendStages.Encoded339
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial339
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial339_eq : InitECandidate.Proofs.BackendStages.Encoded339 = Initial339 := by
  with_unfolding_all rfl
#print axioms Initial339_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
