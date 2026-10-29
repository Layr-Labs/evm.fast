import InitECandidate.Proofs.BackendStages.Encoded423
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial423
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial423_eq : InitECandidate.Proofs.BackendStages.Encoded423 = Initial423 := by
  with_unfolding_all rfl
#print axioms Initial423_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
