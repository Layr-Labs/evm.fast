import InitECandidate.Proofs.BackendStages.Encoded69
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial69
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial69_eq : InitECandidate.Proofs.BackendStages.Encoded69 = Initial69 := by
  with_unfolding_all rfl
#print axioms Initial69_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
