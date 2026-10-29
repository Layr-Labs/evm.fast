import InitECandidate.Proofs.BackendStages.Encoded543
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial543_eq : InitECandidate.Proofs.BackendStages.Encoded543 = Initial543 := by
  with_unfolding_all rfl
#print axioms Initial543_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
