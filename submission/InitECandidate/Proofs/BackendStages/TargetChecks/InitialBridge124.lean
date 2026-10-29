import InitECandidate.Proofs.BackendStages.Encoded124
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial124
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial124_eq : InitECandidate.Proofs.BackendStages.Encoded124 = Initial124 := by
  with_unfolding_all rfl
#print axioms Initial124_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
