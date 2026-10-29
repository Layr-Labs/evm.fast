import InitECandidate.Proofs.BackendStages.Encoded802
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial802_eq : InitECandidate.Proofs.BackendStages.Encoded802 = Initial802 := by
  with_unfolding_all rfl
#print axioms Initial802_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
