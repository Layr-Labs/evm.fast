import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_493
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_493_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 402472 riscvConfig.encode Reencode0_493.lines [] true = (Reencode1_493.lines, 402668, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_493_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
