import InitECandidate.Proofs.BackendStages.Encoded826
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial826_eq : InitECandidate.Proofs.BackendStages.Encoded826 = Initial826 := by
  with_unfolding_all rfl
#print axioms Initial826_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
