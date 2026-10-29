import InitECandidate.Proofs.BackendStages.Encoded511
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial511_eq : InitECandidate.Proofs.BackendStages.Encoded511 = Initial511 := by
  with_unfolding_all rfl
#print axioms Initial511_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
