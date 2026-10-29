import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_532
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_532
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_532_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 433476 riscvConfig.encode Reencode0_532.lines [] true = (Reencode1_532.lines, 434360, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_532_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
