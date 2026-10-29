import InitECandidate.Proofs.BackendStages.Encoded563
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial563
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial563_eq : InitECandidate.Proofs.BackendStages.Encoded563 = Initial563 := by
  with_unfolding_all rfl
#print axioms Initial563_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
