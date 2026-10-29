import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_541
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_541_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 440572 riscvConfig.encode Initial541.lines [] true = (Reencode0_541.lines, 440680, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_541_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
