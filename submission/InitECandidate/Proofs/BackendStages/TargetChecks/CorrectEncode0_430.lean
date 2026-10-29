import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_430
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_430_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 349476 riscvConfig.encode Initial430.lines [] true = (Reencode0_430.lines, 349916, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_430_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
