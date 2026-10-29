import InitECandidate.Proofs.BackendStages.Encoded765
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial765
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial765_eq : InitECandidate.Proofs.BackendStages.Encoded765 = Initial765 := by
  with_unfolding_all rfl
#print axioms Initial765_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
