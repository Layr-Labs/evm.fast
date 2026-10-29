import InitECandidate.Proofs.BackendStages.Encoded805
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial805
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial805_eq : InitECandidate.Proofs.BackendStages.Encoded805 = Initial805 := by
  with_unfolding_all rfl
#print axioms Initial805_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
