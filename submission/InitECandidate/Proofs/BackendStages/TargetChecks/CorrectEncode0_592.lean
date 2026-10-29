import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_592
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_592_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 495636 riscvConfig.encode Initial592.lines [] true = (Reencode0_592.lines, 496208, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_592_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
