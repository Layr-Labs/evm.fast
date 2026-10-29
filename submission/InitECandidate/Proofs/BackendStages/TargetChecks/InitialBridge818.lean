import InitECandidate.Proofs.BackendStages.Encoded818
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial818
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial818_eq : InitECandidate.Proofs.BackendStages.Encoded818 = Initial818 := by
  with_unfolding_all rfl
#print axioms Initial818_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
