import InitECandidate.Proofs.BackendStages.Encoded412
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial412_eq : InitECandidate.Proofs.BackendStages.Encoded412 = Initial412 := by
  with_unfolding_all rfl
#print axioms Initial412_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
