import InitECandidate.Proofs.BackendStages.Encoded724
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial724
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial724_eq : InitECandidate.Proofs.BackendStages.Encoded724 = Initial724 := by
  with_unfolding_all rfl
#print axioms Initial724_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
