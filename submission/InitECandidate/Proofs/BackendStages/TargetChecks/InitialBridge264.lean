import InitECandidate.Proofs.BackendStages.Encoded264
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial264
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial264_eq : InitECandidate.Proofs.BackendStages.Encoded264 = Initial264 := by
  with_unfolding_all rfl
#print axioms Initial264_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
