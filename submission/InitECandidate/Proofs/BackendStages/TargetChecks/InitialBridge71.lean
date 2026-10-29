import InitECandidate.Proofs.BackendStages.Encoded71
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial71
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial71_eq : InitECandidate.Proofs.BackendStages.Encoded71 = Initial71 := by
  with_unfolding_all rfl
#print axioms Initial71_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
