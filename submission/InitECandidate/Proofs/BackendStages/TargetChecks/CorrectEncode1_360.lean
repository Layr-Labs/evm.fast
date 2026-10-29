import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_360
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_360_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 302008 riscvConfig.encode Reencode0_360.lines [] true = (Reencode1_360.lines, 302504, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_360_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
