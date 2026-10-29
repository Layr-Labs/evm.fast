import InitECandidate.Proofs.BackendStages.Encoded768
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial768
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial768_eq : InitECandidate.Proofs.BackendStages.Encoded768 = Initial768 := by
  with_unfolding_all rfl
#print axioms Initial768_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
