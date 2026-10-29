import InitECandidate.Proofs.BackendStages.Encoded140
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial140_eq : InitECandidate.Proofs.BackendStages.Encoded140 = Initial140 := by
  with_unfolding_all rfl
#print axioms Initial140_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
