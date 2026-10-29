import InitECandidate.Proofs.BackendStages.Encoded661
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial661
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial661_eq : InitECandidate.Proofs.BackendStages.Encoded661 = Initial661 := by
  with_unfolding_all rfl
#print axioms Initial661_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
