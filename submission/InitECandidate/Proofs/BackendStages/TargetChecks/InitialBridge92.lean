import InitECandidate.Proofs.BackendStages.Encoded92
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial92
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial92_eq : InitECandidate.Proofs.BackendStages.Encoded92 = Initial92 := by
  with_unfolding_all rfl
#print axioms Initial92_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
