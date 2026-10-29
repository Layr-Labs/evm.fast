import InitECandidate.Proofs.BackendStages.Encoded875
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial875
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial875_eq : InitECandidate.Proofs.BackendStages.Encoded875 = Initial875 := by
  with_unfolding_all rfl
#print axioms Initial875_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
