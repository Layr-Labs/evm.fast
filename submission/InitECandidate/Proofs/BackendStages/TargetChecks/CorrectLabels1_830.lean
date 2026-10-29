import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_830
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_830_eq : LabToTarget.sectionLabels 980992 Reencode0_830.lines [] = (981392, localLabels1_830) := by
  with_unfolding_all rfl
#print axioms localLabels1_830_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
