import InitECandidate.Proofs.BackendStages.Encoded345
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial345_eq : InitECandidate.Proofs.BackendStages.Encoded345 = Initial345 := by
  with_unfolding_all rfl
#print axioms Initial345_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
