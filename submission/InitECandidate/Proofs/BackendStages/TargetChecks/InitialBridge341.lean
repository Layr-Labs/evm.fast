import InitECandidate.Proofs.BackendStages.Encoded341
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial341
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial341_eq : InitECandidate.Proofs.BackendStages.Encoded341 = Initial341 := by
  with_unfolding_all rfl
#print axioms Initial341_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
