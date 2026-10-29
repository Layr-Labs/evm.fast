import InitECandidate.Proofs.BackendStages.Encoded352
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial352_eq : InitECandidate.Proofs.BackendStages.Encoded352 = Initial352 := by
  with_unfolding_all rfl
#print axioms Initial352_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
