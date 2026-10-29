import InitECandidate.Proofs.BackendStages.Encoded760
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial760
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial760_eq : InitECandidate.Proofs.BackendStages.Encoded760 = Initial760 := by
  with_unfolding_all rfl
#print axioms Initial760_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
