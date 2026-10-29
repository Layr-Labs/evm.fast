import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_514
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_514_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 418556 riscvConfig.encode Reencode0_514.lines [] true = (Reencode1_514.lines, 419316, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_514_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
