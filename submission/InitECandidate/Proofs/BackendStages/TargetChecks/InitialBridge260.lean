import InitECandidate.Proofs.BackendStages.Encoded260
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial260
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial260_eq : InitECandidate.Proofs.BackendStages.Encoded260 = Initial260 := by
  with_unfolding_all rfl
#print axioms Initial260_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
