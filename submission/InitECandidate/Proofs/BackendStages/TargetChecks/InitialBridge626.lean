import InitECandidate.Proofs.BackendStages.Encoded626
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial626
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial626_eq : InitECandidate.Proofs.BackendStages.Encoded626 = Initial626 := by
  with_unfolding_all rfl
#print axioms Initial626_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
