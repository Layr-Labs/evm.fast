import InitECandidate.Proofs.BackendStages.Encoded64
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial64
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial64_eq : InitECandidate.Proofs.BackendStages.Encoded64 = Initial64 := by
  with_unfolding_all rfl
#print axioms Initial64_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
