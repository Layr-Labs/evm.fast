import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_514
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_514_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 418556 riscvConfig.encode Initial514.lines [] true = (Reencode0_514.lines, 419316, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_514_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
