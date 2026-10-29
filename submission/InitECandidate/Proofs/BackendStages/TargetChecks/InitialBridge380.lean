import InitECandidate.Proofs.BackendStages.Encoded380
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial380
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial380_eq : InitECandidate.Proofs.BackendStages.Encoded380 = Initial380 := by
  with_unfolding_all rfl
#print axioms Initial380_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
