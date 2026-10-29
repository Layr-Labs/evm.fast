import InitECandidate.Proofs.BackendStages.Encoded828
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial828_eq : InitECandidate.Proofs.BackendStages.Encoded828 = Initial828 := by
  with_unfolding_all rfl
#print axioms Initial828_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
