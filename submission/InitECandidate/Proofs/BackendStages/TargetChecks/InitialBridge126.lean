import InitECandidate.Proofs.BackendStages.Encoded126
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial126
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial126_eq : InitECandidate.Proofs.BackendStages.Encoded126 = Initial126 := by
  with_unfolding_all rfl
#print axioms Initial126_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
