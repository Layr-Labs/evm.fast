import InitECandidate.Proofs.BackendStages.Encoded770
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial770_eq : InitECandidate.Proofs.BackendStages.Encoded770 = Initial770 := by
  with_unfolding_all rfl
#print axioms Initial770_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
