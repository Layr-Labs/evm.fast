import InitECandidate.Proofs.BackendStages.Encoded312
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial312
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial312_eq : InitECandidate.Proofs.BackendStages.Encoded312 = Initial312 := by
  with_unfolding_all rfl
#print axioms Initial312_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
