import InitECandidate.Proofs.BackendStages.Encoded502
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial502_eq : InitECandidate.Proofs.BackendStages.Encoded502 = Initial502 := by
  with_unfolding_all rfl
#print axioms Initial502_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
