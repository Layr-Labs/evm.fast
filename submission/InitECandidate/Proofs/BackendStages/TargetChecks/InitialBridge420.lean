import InitECandidate.Proofs.BackendStages.Encoded420
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial420
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial420_eq : InitECandidate.Proofs.BackendStages.Encoded420 = Initial420 := by
  with_unfolding_all rfl
#print axioms Initial420_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
