import InitECandidate.Proofs.BackendStages.Encoded819
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial819
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial819_eq : InitECandidate.Proofs.BackendStages.Encoded819 = Initial819 := by
  with_unfolding_all rfl
#print axioms Initial819_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
