import InitECandidate.Proofs.BackendStages.Encoded251
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial251
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial251_eq : InitECandidate.Proofs.BackendStages.Encoded251 = Initial251 := by
  with_unfolding_all rfl
#print axioms Initial251_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
