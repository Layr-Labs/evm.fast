import InitECandidate.Proofs.BackendStages.Encoded82
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial82
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial82_eq : InitECandidate.Proofs.BackendStages.Encoded82 = Initial82 := by
  with_unfolding_all rfl
#print axioms Initial82_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
