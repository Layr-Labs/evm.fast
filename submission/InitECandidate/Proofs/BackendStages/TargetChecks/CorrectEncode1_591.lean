import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_591
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_591_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 494812 riscvConfig.encode Reencode0_591.lines [] true = (Reencode1_591.lines, 495636, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_591_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
