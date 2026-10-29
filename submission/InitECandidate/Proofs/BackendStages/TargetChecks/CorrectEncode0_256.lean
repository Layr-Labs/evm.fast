import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_256
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_256_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 202920 riscvConfig.encode Initial256.lines [] true = (Reencode0_256.lines, 206604, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_256_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
