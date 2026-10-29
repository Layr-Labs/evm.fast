import InitECandidate.Proofs.BackendStages.Encoded87
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial87
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial87_eq : InitECandidate.Proofs.BackendStages.Encoded87 = Initial87 := by
  with_unfolding_all rfl
#print axioms Initial87_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
