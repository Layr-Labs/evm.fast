import InitECandidate.Proofs.BackendStages.Encoded122
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial122_eq : InitECandidate.Proofs.BackendStages.Encoded122 = Initial122 := by
  with_unfolding_all rfl
#print axioms Initial122_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
