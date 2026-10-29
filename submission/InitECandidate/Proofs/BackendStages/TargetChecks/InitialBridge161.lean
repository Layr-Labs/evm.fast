import InitECandidate.Proofs.BackendStages.Encoded161
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial161_eq : InitECandidate.Proofs.BackendStages.Encoded161 = Initial161 := by
  with_unfolding_all rfl
#print axioms Initial161_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
