import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_111
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_111
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_111_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 13612 riscvConfig.encode Initial111.lines [] true = (Reencode0_111.lines, 13640, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_111_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
