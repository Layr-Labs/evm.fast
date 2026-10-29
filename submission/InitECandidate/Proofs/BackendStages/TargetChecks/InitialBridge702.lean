import InitECandidate.Proofs.BackendStages.Encoded702
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial702_eq : InitECandidate.Proofs.BackendStages.Encoded702 = Initial702 := by
  with_unfolding_all rfl
#print axioms Initial702_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
