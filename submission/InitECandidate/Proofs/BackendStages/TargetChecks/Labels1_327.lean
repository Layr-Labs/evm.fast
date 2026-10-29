import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_327
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_327_eq : LabToTarget.sectionLabels 280032 Reencode0_327.lines [] = (280320, localLabels1_327) := by
  with_unfolding_all rfl
#print axioms localLabels1_327_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
