import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_359
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_359_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 301956 riscvConfig.encode Reencode0_359.lines [] true = (Reencode1_359.lines, 302008, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_359_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
