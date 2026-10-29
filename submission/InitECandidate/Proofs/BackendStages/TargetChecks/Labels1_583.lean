import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_583_eq : LabToTarget.sectionLabels 480660 Reencode0_583.lines [] = (481192, localLabels1_583) := by
  with_unfolding_all rfl
#print axioms localLabels1_583_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
