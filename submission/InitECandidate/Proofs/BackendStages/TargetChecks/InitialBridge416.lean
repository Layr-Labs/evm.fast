import InitECandidate.Proofs.BackendStages.Encoded416
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial416_eq : InitECandidate.Proofs.BackendStages.Encoded416 = Initial416 := by
  with_unfolding_all rfl
#print axioms Initial416_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
