import InitECandidate.Proofs.BackendStages.Encoded370
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial370_eq : InitECandidate.Proofs.BackendStages.Encoded370 = Initial370 := by
  with_unfolding_all rfl
#print axioms Initial370_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
