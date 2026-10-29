import InitECandidate.Proofs.BackendStages.Encoded342
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial342
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial342_eq : InitECandidate.Proofs.BackendStages.Encoded342 = Initial342 := by
  with_unfolding_all rfl
#print axioms Initial342_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
