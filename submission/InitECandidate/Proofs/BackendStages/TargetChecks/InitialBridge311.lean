import InitECandidate.Proofs.BackendStages.Encoded311
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial311
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial311_eq : InitECandidate.Proofs.BackendStages.Encoded311 = Initial311 := by
  with_unfolding_all rfl
#print axioms Initial311_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
