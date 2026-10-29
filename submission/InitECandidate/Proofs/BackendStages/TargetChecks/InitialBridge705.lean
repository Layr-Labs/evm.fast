import InitECandidate.Proofs.BackendStages.Encoded705
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial705_eq : InitECandidate.Proofs.BackendStages.Encoded705 = Initial705 := by
  with_unfolding_all rfl
#print axioms Initial705_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
