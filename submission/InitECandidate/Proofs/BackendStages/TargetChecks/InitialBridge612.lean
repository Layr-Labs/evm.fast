import InitECandidate.Proofs.BackendStages.Encoded612
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial612
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial612_eq : InitECandidate.Proofs.BackendStages.Encoded612 = Initial612 := by
  with_unfolding_all rfl
#print axioms Initial612_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
