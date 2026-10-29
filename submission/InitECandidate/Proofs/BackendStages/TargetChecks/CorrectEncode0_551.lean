import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_551
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_551_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 453596 riscvConfig.encode Initial551.lines [] true = (Reencode0_551.lines, 454468, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_551_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
