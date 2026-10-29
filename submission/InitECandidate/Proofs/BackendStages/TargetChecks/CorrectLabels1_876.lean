import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_876
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_876_eq : LabToTarget.sectionLabels 1072340 Reencode0_876.lines [] = (1072588, localLabels1_876) := by
  with_unfolding_all rfl
#print axioms localLabels1_876_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
