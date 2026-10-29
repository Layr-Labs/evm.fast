import InitECandidate.Proofs.BackendStages.Encoded480
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial480
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial480_eq : InitECandidate.Proofs.BackendStages.Encoded480 = Initial480 := by
  with_unfolding_all rfl
#print axioms Initial480_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
