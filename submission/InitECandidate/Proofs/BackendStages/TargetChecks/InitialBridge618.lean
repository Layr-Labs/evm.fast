import InitECandidate.Proofs.BackendStages.Encoded618
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial618
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial618_eq : InitECandidate.Proofs.BackendStages.Encoded618 = Initial618 := by
  with_unfolding_all rfl
#print axioms Initial618_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
