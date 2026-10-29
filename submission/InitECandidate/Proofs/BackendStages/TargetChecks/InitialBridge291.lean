import InitECandidate.Proofs.BackendStages.Encoded291
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial291
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial291_eq : InitECandidate.Proofs.BackendStages.Encoded291 = Initial291 := by
  with_unfolding_all rfl
#print axioms Initial291_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
