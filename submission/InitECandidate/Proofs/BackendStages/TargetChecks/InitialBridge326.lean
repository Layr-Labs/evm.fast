import InitECandidate.Proofs.BackendStages.Encoded326
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial326_eq : InitECandidate.Proofs.BackendStages.Encoded326 = Initial326 := by
  with_unfolding_all rfl
#print axioms Initial326_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
