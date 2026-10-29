import InitECandidate.Proofs.BackendStages.Encoded100
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial100_eq : InitECandidate.Proofs.BackendStages.Encoded100 = Initial100 := by
  with_unfolding_all rfl
#print axioms Initial100_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
