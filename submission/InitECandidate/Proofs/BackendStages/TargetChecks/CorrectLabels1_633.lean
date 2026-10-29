import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_633
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_633_eq : LabToTarget.sectionLabels 584936 Reencode0_633.lines [] = (585120, localLabels1_633) := by
  with_unfolding_all rfl
#print axioms localLabels1_633_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
