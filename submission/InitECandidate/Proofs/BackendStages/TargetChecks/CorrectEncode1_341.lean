import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_341
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_341_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 290316 riscvConfig.encode Reencode0_341.lines [] true = (Reencode1_341.lines, 290536, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_341_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
