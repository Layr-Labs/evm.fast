import InitECandidate.Proofs.BackendStages.Encoded5
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial5_eq : InitECandidate.Proofs.BackendStages.Encoded5 = Initial5 := by
  with_unfolding_all rfl
#print axioms Initial5_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
