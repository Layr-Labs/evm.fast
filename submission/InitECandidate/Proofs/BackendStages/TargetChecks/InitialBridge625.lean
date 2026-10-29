import InitECandidate.Proofs.BackendStages.Encoded625
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial625_eq : InitECandidate.Proofs.BackendStages.Encoded625 = Initial625 := by
  with_unfolding_all rfl
#print axioms Initial625_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
