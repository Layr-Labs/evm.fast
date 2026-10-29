import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_315
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_315_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 266624 riscvConfig.encode Reencode0_315.lines [] true = (Reencode1_315.lines, 269132, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_315_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
