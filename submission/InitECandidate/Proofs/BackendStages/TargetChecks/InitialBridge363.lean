import InitECandidate.Proofs.BackendStages.Encoded363
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial363
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial363_eq : InitECandidate.Proofs.BackendStages.Encoded363 = Initial363 := by
  with_unfolding_all rfl
#print axioms Initial363_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
