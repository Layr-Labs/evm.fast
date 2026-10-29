import InitECandidate.Proofs.BackendStages.Encoded201
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial201
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial201_eq : InitECandidate.Proofs.BackendStages.Encoded201 = Initial201 := by
  with_unfolding_all rfl
#print axioms Initial201_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
