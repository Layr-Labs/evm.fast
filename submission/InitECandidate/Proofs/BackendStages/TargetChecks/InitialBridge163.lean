import InitECandidate.Proofs.BackendStages.Encoded163
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial163_eq : InitECandidate.Proofs.BackendStages.Encoded163 = Initial163 := by
  with_unfolding_all rfl
#print axioms Initial163_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
