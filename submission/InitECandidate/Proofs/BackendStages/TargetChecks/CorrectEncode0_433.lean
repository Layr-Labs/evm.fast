import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_433
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_433_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 351632 riscvConfig.encode Initial433.lines [] true = (Reencode0_433.lines, 353368, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_433_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
