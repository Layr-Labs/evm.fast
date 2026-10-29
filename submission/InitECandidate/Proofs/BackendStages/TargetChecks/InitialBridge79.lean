import InitECandidate.Proofs.BackendStages.Encoded79
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial79_eq : InitECandidate.Proofs.BackendStages.Encoded79 = Initial79 := by
  with_unfolding_all rfl
#print axioms Initial79_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
