import InitECandidate.Proofs.BackendStages.Encoded186
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial186_eq : InitECandidate.Proofs.BackendStages.Encoded186 = Initial186 := by
  with_unfolding_all rfl
#print axioms Initial186_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
