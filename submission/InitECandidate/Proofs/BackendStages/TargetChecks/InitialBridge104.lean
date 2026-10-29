import InitECandidate.Proofs.BackendStages.Encoded104
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial104_eq : InitECandidate.Proofs.BackendStages.Encoded104 = Initial104 := by
  with_unfolding_all rfl
#print axioms Initial104_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
