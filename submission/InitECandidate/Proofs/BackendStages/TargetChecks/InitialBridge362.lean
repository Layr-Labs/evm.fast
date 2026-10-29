import InitECandidate.Proofs.BackendStages.Encoded362
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial362
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial362_eq : InitECandidate.Proofs.BackendStages.Encoded362 = Initial362 := by
  with_unfolding_all rfl
#print axioms Initial362_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
