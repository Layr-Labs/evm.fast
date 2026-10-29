import InitECandidate.Proofs.BackendStages.Encoded786
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial786_eq : InitECandidate.Proofs.BackendStages.Encoded786 = Initial786 := by
  with_unfolding_all rfl
#print axioms Initial786_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
