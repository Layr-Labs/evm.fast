import InitECandidate.Proofs.BackendStages.Encoded369
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial369
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial369_eq : InitECandidate.Proofs.BackendStages.Encoded369 = Initial369 := by
  with_unfolding_all rfl
#print axioms Initial369_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
