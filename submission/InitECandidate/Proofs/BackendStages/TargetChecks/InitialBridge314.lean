import InitECandidate.Proofs.BackendStages.Encoded314
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial314
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial314_eq : InitECandidate.Proofs.BackendStages.Encoded314 = Initial314 := by
  with_unfolding_all rfl
#print axioms Initial314_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
