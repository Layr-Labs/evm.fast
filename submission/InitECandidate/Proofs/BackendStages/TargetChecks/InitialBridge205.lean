import InitECandidate.Proofs.BackendStages.Encoded205
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial205
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial205_eq : InitECandidate.Proofs.BackendStages.Encoded205 = Initial205 := by
  with_unfolding_all rfl
#print axioms Initial205_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
