import InitECandidate.Proofs.BackendStages.Encoded88
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial88
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial88_eq : InitECandidate.Proofs.BackendStages.Encoded88 = Initial88 := by
  with_unfolding_all rfl
#print axioms Initial88_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
