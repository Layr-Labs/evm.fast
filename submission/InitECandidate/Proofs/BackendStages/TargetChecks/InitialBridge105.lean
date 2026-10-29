import InitECandidate.Proofs.BackendStages.Encoded105
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial105
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial105_eq : InitECandidate.Proofs.BackendStages.Encoded105 = Initial105 := by
  with_unfolding_all rfl
#print axioms Initial105_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
