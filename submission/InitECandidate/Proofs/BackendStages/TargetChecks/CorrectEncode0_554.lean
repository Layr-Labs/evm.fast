import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_554
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_554_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 456088 riscvConfig.encode Initial554.lines [] true = (Reencode0_554.lines, 457160, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_554_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
