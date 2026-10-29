import InitECandidate.Proofs.BackendStages.Encoded780
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial780_eq : InitECandidate.Proofs.BackendStages.Encoded780 = Initial780 := by
  with_unfolding_all rfl
#print axioms Initial780_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
