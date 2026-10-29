import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_785
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_785_eq : LabToTarget.sectionLabels 879148 Reencode0_785.lines [] = (880512, localLabels1_785) := by
  with_unfolding_all rfl
#print axioms localLabels1_785_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
