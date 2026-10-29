import InitECandidate.Proofs.BackendStages.Encoded129
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial129
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial129_eq : InitECandidate.Proofs.BackendStages.Encoded129 = Initial129 := by
  with_unfolding_all rfl
#print axioms Initial129_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
