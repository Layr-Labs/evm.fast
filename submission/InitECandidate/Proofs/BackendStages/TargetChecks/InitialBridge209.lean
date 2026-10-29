import InitECandidate.Proofs.BackendStages.Encoded209
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial209_eq : InitECandidate.Proofs.BackendStages.Encoded209 = Initial209 := by
  with_unfolding_all rfl
#print axioms Initial209_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
