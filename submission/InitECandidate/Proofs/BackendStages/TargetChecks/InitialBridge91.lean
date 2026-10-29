import InitECandidate.Proofs.BackendStages.Encoded91
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial91
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial91_eq : InitECandidate.Proofs.BackendStages.Encoded91 = Initial91 := by
  with_unfolding_all rfl
#print axioms Initial91_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
