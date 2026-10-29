import InitECandidate.Proofs.BackendStages.Encoded408
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial408
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial408_eq : InitECandidate.Proofs.BackendStages.Encoded408 = Initial408 := by
  with_unfolding_all rfl
#print axioms Initial408_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
