import InitECandidate.Proofs.BackendStages.Encoded531
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial531_eq : InitECandidate.Proofs.BackendStages.Encoded531 = Initial531 := by
  with_unfolding_all rfl
#print axioms Initial531_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
