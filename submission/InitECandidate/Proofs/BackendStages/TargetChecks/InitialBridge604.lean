import InitECandidate.Proofs.BackendStages.Encoded604
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial604_eq : InitECandidate.Proofs.BackendStages.Encoded604 = Initial604 := by
  with_unfolding_all rfl
#print axioms Initial604_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
