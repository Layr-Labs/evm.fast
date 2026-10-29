import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_592_eq : LabToTarget.sectionLabels 495636 Reencode0_592.lines [] = (496208, localLabels1_592) := by
  with_unfolding_all rfl
#print axioms localLabels1_592_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
