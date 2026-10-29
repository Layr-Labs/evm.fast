import InitECandidate.Proofs.BackendStages.Encoded279
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial279
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial279_eq : InitECandidate.Proofs.BackendStages.Encoded279 = Initial279 := by
  with_unfolding_all rfl
#print axioms Initial279_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
