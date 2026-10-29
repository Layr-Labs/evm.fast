import InitECandidate.Proofs.BackendStages.Encoded575
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial575_eq : InitECandidate.Proofs.BackendStages.Encoded575 = Initial575 := by
  with_unfolding_all rfl
#print axioms Initial575_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
