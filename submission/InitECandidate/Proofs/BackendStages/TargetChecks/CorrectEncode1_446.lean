import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_446
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_446
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_446_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 359520 riscvConfig.encode Reencode0_446.lines [] true = (Reencode1_446.lines, 359688, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_446_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
