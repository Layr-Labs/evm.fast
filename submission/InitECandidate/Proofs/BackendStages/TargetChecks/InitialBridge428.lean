import InitECandidate.Proofs.BackendStages.Encoded428
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial428
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial428_eq : InitECandidate.Proofs.BackendStages.Encoded428 = Initial428 := by
  with_unfolding_all rfl
#print axioms Initial428_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
