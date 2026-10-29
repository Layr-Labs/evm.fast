import InitECandidate.Proofs.BackendStages.Encoded860
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial860_eq : InitECandidate.Proofs.BackendStages.Encoded860 = Initial860 := by
  with_unfolding_all rfl
#print axioms Initial860_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
