import InitECandidate.Proofs.BackendStages.Encoded865
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial865
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial865_eq : InitECandidate.Proofs.BackendStages.Encoded865 = Initial865 := by
  with_unfolding_all rfl
#print axioms Initial865_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
