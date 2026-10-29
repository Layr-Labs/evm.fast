import InitECandidate.Proofs.BackendStages.Encoded781
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial781
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial781_eq : InitECandidate.Proofs.BackendStages.Encoded781 = Initial781 := by
  with_unfolding_all rfl
#print axioms Initial781_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
