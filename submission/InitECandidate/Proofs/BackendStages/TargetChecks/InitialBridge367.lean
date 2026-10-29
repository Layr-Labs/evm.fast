import InitECandidate.Proofs.BackendStages.Encoded367
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial367
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial367_eq : InitECandidate.Proofs.BackendStages.Encoded367 = Initial367 := by
  with_unfolding_all rfl
#print axioms Initial367_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
