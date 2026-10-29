import InitECandidate.Proofs.BackendStages.Encoded255
import InitECandidate.Proofs.BackendStages.TargetChecks.Initial255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial255_eq : InitECandidate.Proofs.BackendStages.Encoded255 = Initial255 := by
  with_unfolding_all rfl
#print axioms Initial255_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
