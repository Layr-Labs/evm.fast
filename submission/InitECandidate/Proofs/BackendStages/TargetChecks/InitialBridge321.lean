import InitECandidate.Proofs.BackendStages.Encoded321
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial321
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial321_eq : InitECandidate.Proofs.BackendStages.Encoded321 = Initial321 := by
  with_unfolding_all rfl
#print axioms Initial321_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
