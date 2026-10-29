import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_773_eq : LabToTarget.sectionLabels 859920 Reencode0_773.lines [] = (861080, localLabels1_773) := by
  with_unfolding_all rfl
#print axioms localLabels1_773_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
