import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_488_eq : LabToTarget.sectionLabels 400184 Initial488.lines [] = (400496, localLabels0_488) := by
  with_unfolding_all rfl
#print axioms localLabels0_488_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
