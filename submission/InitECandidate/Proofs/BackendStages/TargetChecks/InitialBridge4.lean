import InitECandidate.Proofs.BackendStages.Encoded4
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial4
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial4_eq : InitECandidate.Proofs.BackendStages.Encoded4 = Initial4 := by
  with_unfolding_all rfl
#print axioms Initial4_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
