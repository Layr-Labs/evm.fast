import InitECandidate.Proofs.BackendStages.Encoded220
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial220
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial220_eq : InitECandidate.Proofs.BackendStages.Encoded220 = Initial220 := by
  with_unfolding_all rfl
#print axioms Initial220_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
