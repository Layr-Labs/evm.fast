import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_502
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_502_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 407616 riscvConfig.encode Initial502.lines [] true = (Reencode0_502.lines, 408488, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_502_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
