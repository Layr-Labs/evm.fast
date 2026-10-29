import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_499
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_499_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 405000 riscvConfig.encode Reencode0_499.lines [] true = (Reencode1_499.lines, 405872, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_499_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
