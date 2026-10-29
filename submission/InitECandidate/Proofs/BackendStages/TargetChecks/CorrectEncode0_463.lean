import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_463
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_463_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 391152 riscvConfig.encode Initial463.lines [] true = (Reencode0_463.lines, 391188, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_463_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
