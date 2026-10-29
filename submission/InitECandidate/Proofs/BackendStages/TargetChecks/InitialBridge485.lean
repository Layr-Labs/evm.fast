import InitECandidate.Proofs.BackendStages.Encoded485
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial485
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial485_eq : InitECandidate.Proofs.BackendStages.Encoded485 = Initial485 := by
  with_unfolding_all rfl
#print axioms Initial485_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
