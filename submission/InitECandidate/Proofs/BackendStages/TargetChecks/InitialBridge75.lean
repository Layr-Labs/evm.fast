import InitECandidate.Proofs.BackendStages.Encoded75
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial75
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial75_eq : InitECandidate.Proofs.BackendStages.Encoded75 = Initial75 := by
  with_unfolding_all rfl
#print axioms Initial75_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
