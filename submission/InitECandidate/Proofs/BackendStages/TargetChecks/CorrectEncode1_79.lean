import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_79
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_79_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 7860 riscvConfig.encode Reencode0_79.lines [] true = (Reencode1_79.lines, 9112, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_79_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
