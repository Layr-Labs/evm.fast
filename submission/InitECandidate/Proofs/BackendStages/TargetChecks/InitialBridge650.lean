import InitECandidate.Proofs.BackendStages.Encoded650
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial650
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial650_eq : InitECandidate.Proofs.BackendStages.Encoded650 = Initial650 := by
  with_unfolding_all rfl
#print axioms Initial650_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
