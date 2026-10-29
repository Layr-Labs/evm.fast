import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_787_eq : LabToTarget.sectionLabels 881860 Reencode0_787.lines [] = (883332, localLabels1_787) := by
  with_unfolding_all rfl
#print axioms localLabels1_787_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
