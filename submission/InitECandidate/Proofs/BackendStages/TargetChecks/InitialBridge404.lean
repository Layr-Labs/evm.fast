import InitECandidate.Proofs.BackendStages.Encoded404
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial404
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial404_eq : InitECandidate.Proofs.BackendStages.Encoded404 = Initial404 := by
  with_unfolding_all rfl
#print axioms Initial404_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
