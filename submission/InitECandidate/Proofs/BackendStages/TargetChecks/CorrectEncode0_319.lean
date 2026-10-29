import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_319
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_319_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 273108 riscvConfig.encode Initial319.lines [] true = (Reencode0_319.lines, 273768, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_319_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
