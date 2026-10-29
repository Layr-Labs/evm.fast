import InitECandidate.Proofs.BackendStages.Encoded80
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial80
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial80_eq : InitECandidate.Proofs.BackendStages.Encoded80 = Initial80 := by
  with_unfolding_all rfl
#print axioms Initial80_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
