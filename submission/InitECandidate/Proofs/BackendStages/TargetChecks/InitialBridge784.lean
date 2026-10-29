import InitECandidate.Proofs.BackendStages.Encoded784
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial784
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial784_eq : InitECandidate.Proofs.BackendStages.Encoded784 = Initial784 := by
  with_unfolding_all rfl
#print axioms Initial784_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
