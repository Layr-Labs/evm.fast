import InitECandidate.Proofs.BackendStages.Encoded130
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial130
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial130_eq : InitECandidate.Proofs.BackendStages.Encoded130 = Initial130 := by
  with_unfolding_all rfl
#print axioms Initial130_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
