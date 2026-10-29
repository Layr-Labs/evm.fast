import InitECandidate.Proofs.BackendStages.Encoded89
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial89
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial89_eq : InitECandidate.Proofs.BackendStages.Encoded89 = Initial89 := by
  with_unfolding_all rfl
#print axioms Initial89_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
