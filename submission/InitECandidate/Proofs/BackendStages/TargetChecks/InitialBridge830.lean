import InitECandidate.Proofs.BackendStages.Encoded830
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial830
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial830_eq : InitECandidate.Proofs.BackendStages.Encoded830 = Initial830 := by
  with_unfolding_all rfl
#print axioms Initial830_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
