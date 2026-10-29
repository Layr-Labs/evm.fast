import InitECandidate.Proofs.BackendStages.Encoded313
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial313_eq : InitECandidate.Proofs.BackendStages.Encoded313 = Initial313 := by
  with_unfolding_all rfl
#print axioms Initial313_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
