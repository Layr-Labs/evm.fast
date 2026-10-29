import InitECandidate.Proofs.BackendStages.Encoded461
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial461
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial461_eq : InitECandidate.Proofs.BackendStages.Encoded461 = Initial461 := by
  with_unfolding_all rfl
#print axioms Initial461_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
