import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_756
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_756_eq : LabToTarget.sectionLabels 826472 Reencode0_756.lines [] = (826780, localLabels1_756) := by
  with_unfolding_all rfl
#print axioms localLabels1_756_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
