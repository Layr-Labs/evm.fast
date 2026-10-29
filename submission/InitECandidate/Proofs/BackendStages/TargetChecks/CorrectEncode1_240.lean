import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_240
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_240_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 187808 riscvConfig.encode Reencode0_240.lines [] true = (Reencode1_240.lines, 188780, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_240_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
