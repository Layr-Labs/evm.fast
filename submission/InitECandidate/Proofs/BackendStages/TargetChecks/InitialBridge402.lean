import InitECandidate.Proofs.BackendStages.Encoded402
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial402_eq : InitECandidate.Proofs.BackendStages.Encoded402 = Initial402 := by
  with_unfolding_all rfl
#print axioms Initial402_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
