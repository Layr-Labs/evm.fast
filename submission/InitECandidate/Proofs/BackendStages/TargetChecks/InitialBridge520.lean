import InitECandidate.Proofs.BackendStages.Encoded520
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial520
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial520_eq : InitECandidate.Proofs.BackendStages.Encoded520 = Initial520 := by
  with_unfolding_all rfl
#print axioms Initial520_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
