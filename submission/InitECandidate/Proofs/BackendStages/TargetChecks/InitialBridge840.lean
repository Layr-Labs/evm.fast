import InitECandidate.Proofs.BackendStages.Encoded840
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial840_eq : InitECandidate.Proofs.BackendStages.Encoded840 = Initial840 := by
  with_unfolding_all rfl
#print axioms Initial840_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
