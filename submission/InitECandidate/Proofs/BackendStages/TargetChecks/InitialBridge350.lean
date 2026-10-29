import InitECandidate.Proofs.BackendStages.Encoded350
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial350
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial350_eq : InitECandidate.Proofs.BackendStages.Encoded350 = Initial350 := by
  with_unfolding_all rfl
#print axioms Initial350_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
