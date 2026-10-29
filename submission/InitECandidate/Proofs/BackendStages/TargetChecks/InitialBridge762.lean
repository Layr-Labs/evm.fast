import InitECandidate.Proofs.BackendStages.Encoded762
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial762_eq : InitECandidate.Proofs.BackendStages.Encoded762 = Initial762 := by
  with_unfolding_all rfl
#print axioms Initial762_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
