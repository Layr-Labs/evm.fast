import InitECandidate.Proofs.BackendStages.Encoded522
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial522
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial522_eq : InitECandidate.Proofs.BackendStages.Encoded522 = Initial522 := by
  with_unfolding_all rfl
#print axioms Initial522_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
