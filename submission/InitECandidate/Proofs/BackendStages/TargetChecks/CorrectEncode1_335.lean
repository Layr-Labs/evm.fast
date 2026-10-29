import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_335
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_335_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 288732 riscvConfig.encode Reencode0_335.lines [] true = (Reencode1_335.lines, 289060, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_335_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
