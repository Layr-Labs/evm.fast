import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_360_eq : LabToTarget.sectionLabels 302008 Reencode0_360.lines [] = (302504, localLabels1_360) := by
  with_unfolding_all rfl
#print axioms localLabels1_360_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
