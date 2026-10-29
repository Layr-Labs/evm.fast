import InitECandidate.Proofs.BackendStages.Encoded440
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial440
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial440_eq : InitECandidate.Proofs.BackendStages.Encoded440 = Initial440 := by
  with_unfolding_all rfl
#print axioms Initial440_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
