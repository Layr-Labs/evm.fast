import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_389
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_389_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 326924 riscvConfig.encode Reencode0_389.lines [] true = (Reencode1_389.lines, 327840, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_389_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
