import InitECandidate.Proofs.BackendStages.Encoded308
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial308
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial308_eq : InitECandidate.Proofs.BackendStages.Encoded308 = Initial308 := by
  with_unfolding_all rfl
#print axioms Initial308_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
