import InitECandidate.Proofs.BackendStages.Encoded761
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial761_eq : InitECandidate.Proofs.BackendStages.Encoded761 = Initial761 := by
  with_unfolding_all rfl
#print axioms Initial761_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
