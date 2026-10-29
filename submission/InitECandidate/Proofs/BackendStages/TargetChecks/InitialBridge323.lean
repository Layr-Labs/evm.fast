import InitECandidate.Proofs.BackendStages.Encoded323
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial323
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial323_eq : InitECandidate.Proofs.BackendStages.Encoded323 = Initial323 := by
  with_unfolding_all rfl
#print axioms Initial323_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
