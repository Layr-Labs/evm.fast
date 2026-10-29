import InitECandidate.Proofs.BackendStages.Encoded729
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial729
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial729_eq : InitECandidate.Proofs.BackendStages.Encoded729 = Initial729 := by
  with_unfolding_all rfl
#print axioms Initial729_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
