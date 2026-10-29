import InitECandidate.Proofs.BackendStages.Encoded600
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial600_eq : InitECandidate.Proofs.BackendStages.Encoded600 = Initial600 := by
  with_unfolding_all rfl
#print axioms Initial600_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
