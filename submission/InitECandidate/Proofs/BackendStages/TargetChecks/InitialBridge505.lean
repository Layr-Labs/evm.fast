import InitECandidate.Proofs.BackendStages.Encoded505
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial505
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial505_eq : InitECandidate.Proofs.BackendStages.Encoded505 = Initial505 := by
  with_unfolding_all rfl
#print axioms Initial505_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
