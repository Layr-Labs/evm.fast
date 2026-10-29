import InitECandidate.Proofs.BackendStages.Encoded305
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial305
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial305_eq : InitECandidate.Proofs.BackendStages.Encoded305 = Initial305 := by
  with_unfolding_all rfl
#print axioms Initial305_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
