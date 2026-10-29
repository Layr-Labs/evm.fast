import InitECandidate.Proofs.BackendStages.Encoded90
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial90
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial90_eq : InitECandidate.Proofs.BackendStages.Encoded90 = Initial90 := by
  with_unfolding_all rfl
#print axioms Initial90_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
