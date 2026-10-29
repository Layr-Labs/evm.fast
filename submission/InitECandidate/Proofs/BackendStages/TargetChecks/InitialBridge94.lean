import InitECandidate.Proofs.BackendStages.Encoded94
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial94
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial94_eq : InitECandidate.Proofs.BackendStages.Encoded94 = Initial94 := by
  with_unfolding_all rfl
#print axioms Initial94_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
