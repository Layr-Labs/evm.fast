import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_787_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 881860 riscvConfig.encode Reencode0_787.lines [] true = (Reencode1_787.lines, 883332, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_787_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
