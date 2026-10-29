import InitECandidate.Proofs.BackendStages.Encoded821
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial821_eq : InitECandidate.Proofs.BackendStages.Encoded821 = Initial821 := by
  with_unfolding_all rfl
#print axioms Initial821_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
