import InitECandidate.Proofs.BackendStages.Encoded430
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial430
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial430_eq : InitECandidate.Proofs.BackendStages.Encoded430 = Initial430 := by
  with_unfolding_all rfl
#print axioms Initial430_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
