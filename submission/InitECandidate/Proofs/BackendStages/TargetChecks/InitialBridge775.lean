import InitECandidate.Proofs.BackendStages.Encoded775
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial775
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial775_eq : InitECandidate.Proofs.BackendStages.Encoded775 = Initial775 := by
  with_unfolding_all rfl
#print axioms Initial775_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
