import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_359_eq : LabToTarget.sectionLabels 301956 Reencode0_359.lines [] = (302008, localLabels1_359) := by
  with_unfolding_all rfl
#print axioms localLabels1_359_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
