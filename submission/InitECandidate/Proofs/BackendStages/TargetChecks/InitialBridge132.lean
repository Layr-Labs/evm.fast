import InitECandidate.Proofs.BackendStages.Encoded132
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial132_eq : InitECandidate.Proofs.BackendStages.Encoded132 = Initial132 := by
  with_unfolding_all rfl
#print axioms Initial132_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
