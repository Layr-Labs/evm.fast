import InitECandidate.Proofs.BackendStages.Encoded583
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial583
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial583_eq : InitECandidate.Proofs.BackendStages.Encoded583 = Initial583 := by
  with_unfolding_all rfl
#print axioms Initial583_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
