import InitECandidate.Proofs.BackendStages.Encoded688
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial688
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial688_eq : InitECandidate.Proofs.BackendStages.Encoded688 = Initial688 := by
  with_unfolding_all rfl
#print axioms Initial688_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
