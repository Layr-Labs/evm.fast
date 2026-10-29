import InitECandidate.Proofs.BackendStages.Encoded365
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial365
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial365_eq : InitECandidate.Proofs.BackendStages.Encoded365 = Initial365 := by
  with_unfolding_all rfl
#print axioms Initial365_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
