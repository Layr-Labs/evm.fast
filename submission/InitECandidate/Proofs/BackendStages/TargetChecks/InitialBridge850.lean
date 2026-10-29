import InitECandidate.Proofs.BackendStages.Encoded850
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial850
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial850_eq : InitECandidate.Proofs.BackendStages.Encoded850 = Initial850 := by
  with_unfolding_all rfl
#print axioms Initial850_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
