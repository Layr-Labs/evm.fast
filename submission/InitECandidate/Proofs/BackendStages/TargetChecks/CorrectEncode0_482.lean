import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_482
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_482_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 397140 riscvConfig.encode Initial482.lines [] true = (Reencode0_482.lines, 397888, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_482_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
