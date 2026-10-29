import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_429
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_429_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 348980 riscvConfig.encode Reencode0_429.lines [] true = (Reencode1_429.lines, 349476, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_429_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
