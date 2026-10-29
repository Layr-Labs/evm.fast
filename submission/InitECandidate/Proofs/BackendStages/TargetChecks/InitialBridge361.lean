import InitECandidate.Proofs.BackendStages.Encoded361
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial361
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial361_eq : InitECandidate.Proofs.BackendStages.Encoded361 = Initial361 := by
  with_unfolding_all rfl
#print axioms Initial361_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
