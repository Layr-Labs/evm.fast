import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_158
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_158_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 90960 riscvConfig.encode Reencode0_158.lines [] true = (Reencode1_158.lines, 92224, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_158_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
