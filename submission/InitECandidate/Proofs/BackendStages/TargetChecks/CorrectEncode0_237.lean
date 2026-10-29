import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_237
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_237_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 185260 riscvConfig.encode Initial237.lines [] true = (Reencode0_237.lines, 186880, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_237_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
