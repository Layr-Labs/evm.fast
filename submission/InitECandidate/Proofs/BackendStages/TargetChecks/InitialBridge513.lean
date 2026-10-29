import InitECandidate.Proofs.BackendStages.Encoded513
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial513
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial513_eq : InitECandidate.Proofs.BackendStages.Encoded513 = Initial513 := by
  with_unfolding_all rfl
#print axioms Initial513_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
