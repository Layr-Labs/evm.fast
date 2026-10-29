import InitECandidate.Proofs.BackendStages.Encoded337
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial337
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial337_eq : InitECandidate.Proofs.BackendStages.Encoded337 = Initial337 := by
  with_unfolding_all rfl
#print axioms Initial337_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
