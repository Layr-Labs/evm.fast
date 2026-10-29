import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_575
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_575_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 474976 riscvConfig.encode Reencode0_575.lines [] true = (Reencode1_575.lines, 475632, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_575_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
