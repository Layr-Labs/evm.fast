import InitECandidate.Proofs.BackendStages.Encoded701
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial701_eq : InitECandidate.Proofs.BackendStages.Encoded701 = Initial701 := by
  with_unfolding_all rfl
#print axioms Initial701_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
