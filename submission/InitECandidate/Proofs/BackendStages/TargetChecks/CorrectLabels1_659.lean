import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_659
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_659_eq : LabToTarget.sectionLabels 643168 Reencode0_659.lines [] = (643828, localLabels1_659) := by
  with_unfolding_all rfl
#print axioms localLabels1_659_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
