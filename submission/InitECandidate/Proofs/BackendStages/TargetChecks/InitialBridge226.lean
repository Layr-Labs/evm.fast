import InitECandidate.Proofs.BackendStages.Encoded226
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial226
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial226_eq : InitECandidate.Proofs.BackendStages.Encoded226 = Initial226 := by
  with_unfolding_all rfl
#print axioms Initial226_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
