import InitECandidate.Proofs.BackendStages.Encoded725
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial725
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial725_eq : InitECandidate.Proofs.BackendStages.Encoded725 = Initial725 := by
  with_unfolding_all rfl
#print axioms Initial725_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
