import InitECandidate.Proofs.BackendStages.Encoded451
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial451
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial451_eq : InitECandidate.Proofs.BackendStages.Encoded451 = Initial451 := by
  with_unfolding_all rfl
#print axioms Initial451_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
