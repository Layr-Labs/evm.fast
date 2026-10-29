import InitECandidate.Proofs.BackendStages.Encoded332
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial332
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial332_eq : InitECandidate.Proofs.BackendStages.Encoded332 = Initial332 := by
  with_unfolding_all rfl
#print axioms Initial332_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
