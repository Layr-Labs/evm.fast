import InitECandidate.Proofs.BackendStages.Encoded525
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial525
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial525_eq : InitECandidate.Proofs.BackendStages.Encoded525 = Initial525 := by
  with_unfolding_all rfl
#print axioms Initial525_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
