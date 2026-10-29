import InitECandidate.Proofs.BackendStages.Encoded356
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial356_eq : InitECandidate.Proofs.BackendStages.Encoded356 = Initial356 := by
  with_unfolding_all rfl
#print axioms Initial356_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
