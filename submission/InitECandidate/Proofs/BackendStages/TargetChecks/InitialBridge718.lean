import InitECandidate.Proofs.BackendStages.Encoded718
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial718
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial718_eq : InitECandidate.Proofs.BackendStages.Encoded718 = Initial718 := by
  with_unfolding_all rfl
#print axioms Initial718_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
