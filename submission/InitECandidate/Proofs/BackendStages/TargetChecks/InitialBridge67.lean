import InitECandidate.Proofs.BackendStages.Encoded67
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial67
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial67_eq : InitECandidate.Proofs.BackendStages.Encoded67 = Initial67 := by
  with_unfolding_all rfl
#print axioms Initial67_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
