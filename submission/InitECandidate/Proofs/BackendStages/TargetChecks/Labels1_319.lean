import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_319_eq : LabToTarget.sectionLabels 273108 Reencode0_319.lines [] = (273768, localLabels1_319) := by
  with_unfolding_all rfl
#print axioms localLabels1_319_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
