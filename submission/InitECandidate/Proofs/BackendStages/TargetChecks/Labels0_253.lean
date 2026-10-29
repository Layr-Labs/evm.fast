import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_253_eq : LabToTarget.sectionLabels 198140 Initial253.lines [] = (200564, localLabels0_253) := by
  with_unfolding_all rfl
#print axioms localLabels0_253_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
