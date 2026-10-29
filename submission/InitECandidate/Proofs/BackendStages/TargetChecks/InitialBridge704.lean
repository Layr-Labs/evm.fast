import InitECandidate.Proofs.BackendStages.Encoded704
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial704
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial704_eq : InitECandidate.Proofs.BackendStages.Encoded704 = Initial704 := by
  with_unfolding_all rfl
#print axioms Initial704_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
