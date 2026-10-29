import InitECandidate.Proofs.BackendStages.Encoded637
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial637_eq : InitECandidate.Proofs.BackendStages.Encoded637 = Initial637 := by
  with_unfolding_all rfl
#print axioms Initial637_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
