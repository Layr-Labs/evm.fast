import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_780
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_780_eq : LabToTarget.sectionLabels 865428 Reencode0_780.lines [] = (865604, localLabels1_780) := by
  with_unfolding_all rfl
#print axioms localLabels1_780_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
