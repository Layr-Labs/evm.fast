import InitECandidate.Proofs.BackendStages.Encoded541
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial541
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial541_eq : InitECandidate.Proofs.BackendStages.Encoded541 = Initial541 := by
  with_unfolding_all rfl
#print axioms Initial541_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
