import InitECandidate.Proofs.BackendStages.Encoded106
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial106_eq : InitECandidate.Proofs.BackendStages.Encoded106 = Initial106 := by
  with_unfolding_all rfl
#print axioms Initial106_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
