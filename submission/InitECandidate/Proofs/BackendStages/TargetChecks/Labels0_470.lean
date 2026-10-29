import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_470_eq : LabToTarget.sectionLabels 392488 Initial470.lines [] = (392584, localLabels0_470) := by
  with_unfolding_all rfl
#print axioms localLabels0_470_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
