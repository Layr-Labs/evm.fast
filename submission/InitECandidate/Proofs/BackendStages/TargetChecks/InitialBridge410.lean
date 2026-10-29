import InitECandidate.Proofs.BackendStages.Encoded410
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial410
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial410_eq : InitECandidate.Proofs.BackendStages.Encoded410 = Initial410 := by
  with_unfolding_all rfl
#print axioms Initial410_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
