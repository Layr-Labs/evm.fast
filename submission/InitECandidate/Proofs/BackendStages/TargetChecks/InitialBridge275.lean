import InitECandidate.Proofs.BackendStages.Encoded275
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial275
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial275_eq : InitECandidate.Proofs.BackendStages.Encoded275 = Initial275 := by
  with_unfolding_all rfl
#print axioms Initial275_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
