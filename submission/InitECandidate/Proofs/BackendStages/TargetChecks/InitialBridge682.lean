import InitECandidate.Proofs.BackendStages.Encoded682
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial682_eq : InitECandidate.Proofs.BackendStages.Encoded682 = Initial682 := by
  with_unfolding_all rfl
#print axioms Initial682_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
