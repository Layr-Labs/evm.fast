import InitECandidate.Proofs.BackendStages.Encoded843
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial843
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial843_eq : InitECandidate.Proofs.BackendStages.Encoded843 = Initial843 := by
  with_unfolding_all rfl
#print axioms Initial843_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
