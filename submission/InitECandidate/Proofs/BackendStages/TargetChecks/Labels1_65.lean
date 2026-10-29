import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_65_eq : LabToTarget.sectionLabels 1940 Reencode0_65.lines [] = (5244, localLabels1_65) := by
  with_unfolding_all rfl
#print axioms localLabels1_65_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
