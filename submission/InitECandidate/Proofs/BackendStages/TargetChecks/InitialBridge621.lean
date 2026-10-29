import InitECandidate.Proofs.BackendStages.Encoded621
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial621
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial621_eq : InitECandidate.Proofs.BackendStages.Encoded621 = Initial621 := by
  with_unfolding_all rfl
#print axioms Initial621_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
