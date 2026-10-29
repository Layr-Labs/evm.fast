import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_593
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_593_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 496208 riscvConfig.encode Initial593.lines [] true = (Reencode0_593.lines, 501700, false) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_593_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
