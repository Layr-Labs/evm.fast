import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_250
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_250_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 195356 riscvConfig.encode Initial250.lines [] true = (Reencode0_250.lines, 196140, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_250_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
