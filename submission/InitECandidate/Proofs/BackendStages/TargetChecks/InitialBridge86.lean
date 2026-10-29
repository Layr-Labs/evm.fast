import InitECandidate.Proofs.BackendStages.Encoded86
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial86
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial86_eq : InitECandidate.Proofs.BackendStages.Encoded86 = Initial86 := by
  with_unfolding_all rfl
#print axioms Initial86_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
