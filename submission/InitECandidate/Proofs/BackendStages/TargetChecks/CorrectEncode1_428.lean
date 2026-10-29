import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_428
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_428_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 348316 riscvConfig.encode Reencode0_428.lines [] true = (Reencode1_428.lines, 348980, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_428_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
