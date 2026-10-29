import InitECandidate.Proofs.BackendStages.Encoded854
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial854_eq : InitECandidate.Proofs.BackendStages.Encoded854 = Initial854 := by
  with_unfolding_all rfl
#print axioms Initial854_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
