import InitECandidate.Proofs.BackendStages.Encoded84
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial84
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial84_eq : InitECandidate.Proofs.BackendStages.Encoded84 = Initial84 := by
  with_unfolding_all rfl
#print axioms Initial84_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
