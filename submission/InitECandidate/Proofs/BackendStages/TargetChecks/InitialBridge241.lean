import InitECandidate.Proofs.BackendStages.Encoded241
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial241
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial241_eq : InitECandidate.Proofs.BackendStages.Encoded241 = Initial241 := by
  with_unfolding_all rfl
#print axioms Initial241_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
