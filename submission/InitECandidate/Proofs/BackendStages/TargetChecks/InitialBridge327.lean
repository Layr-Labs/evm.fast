import InitECandidate.Proofs.BackendStages.Encoded327
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial327
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial327_eq : InitECandidate.Proofs.BackendStages.Encoded327 = Initial327 := by
  with_unfolding_all rfl
#print axioms Initial327_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
