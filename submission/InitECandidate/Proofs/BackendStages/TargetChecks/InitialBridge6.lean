import InitECandidate.Proofs.BackendStages.Encoded6
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial6_eq : InitECandidate.Proofs.BackendStages.Encoded6 = Initial6 := by
  with_unfolding_all rfl
#print axioms Initial6_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
