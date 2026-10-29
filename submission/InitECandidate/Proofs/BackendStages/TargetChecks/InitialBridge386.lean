import InitECandidate.Proofs.BackendStages.Encoded386
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial386_eq : InitECandidate.Proofs.BackendStages.Encoded386 = Initial386 := by
  with_unfolding_all rfl
#print axioms Initial386_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
