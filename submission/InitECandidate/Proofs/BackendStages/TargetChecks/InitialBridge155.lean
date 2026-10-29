import InitECandidate.Proofs.BackendStages.Encoded155
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial155
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial155_eq : InitECandidate.Proofs.BackendStages.Encoded155 = Initial155 := by
  with_unfolding_all rfl
#print axioms Initial155_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
