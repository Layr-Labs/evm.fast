import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_511
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_511_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 416108 riscvConfig.encode Reencode0_511.lines [] true = (Reencode1_511.lines, 416980, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_511_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
