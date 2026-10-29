import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_394
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_394_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 328976 riscvConfig.encode Reencode0_394.lines [] true = (Reencode1_394.lines, 329184, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_394_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
