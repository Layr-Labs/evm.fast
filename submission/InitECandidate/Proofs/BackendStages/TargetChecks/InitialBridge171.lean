import InitECandidate.Proofs.BackendStages.Encoded171
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial171
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial171_eq : InitECandidate.Proofs.BackendStages.Encoded171 = Initial171 := by
  with_unfolding_all rfl
#print axioms Initial171_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
