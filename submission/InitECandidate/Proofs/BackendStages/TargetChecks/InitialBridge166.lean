import InitECandidate.Proofs.BackendStages.Encoded166
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial166_eq : InitECandidate.Proofs.BackendStages.Encoded166 = Initial166 := by
  with_unfolding_all rfl
#print axioms Initial166_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
