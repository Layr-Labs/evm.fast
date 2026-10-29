import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_253_eq : LabToTarget.sectionLabels 198144 Reencode0_253.lines [] = (200568, localLabels1_253) := by
  with_unfolding_all rfl
#print axioms localLabels1_253_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
