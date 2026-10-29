import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_583
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_583_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 480660 riscvConfig.encode Reencode0_583.lines [] true = (Reencode1_583.lines, 481192, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_583_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
