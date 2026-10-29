import InitECandidate.Proofs.BackendStages.Encoded210
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial210
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial210_eq : InitECandidate.Proofs.BackendStages.Encoded210 = Initial210 := by
  with_unfolding_all rfl
#print axioms Initial210_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
