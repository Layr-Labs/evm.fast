import InitECandidate.Proofs.BackendStages.Encoded83
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial83
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial83_eq : InitECandidate.Proofs.BackendStages.Encoded83 = Initial83 := by
  with_unfolding_all rfl
#print axioms Initial83_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
