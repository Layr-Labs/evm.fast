import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_641_eq : LabToTarget.sectionLabels 592212 Reencode0_641.lines [] = (597416, localLabels1_641) := by
  with_unfolding_all rfl
#print axioms localLabels1_641_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
