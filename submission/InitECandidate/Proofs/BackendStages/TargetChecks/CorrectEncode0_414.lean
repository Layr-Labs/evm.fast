import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_414
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_414_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 339640 riscvConfig.encode Initial414.lines [] true = (Reencode0_414.lines, 340380, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_414_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
