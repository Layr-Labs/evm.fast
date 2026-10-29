import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_153
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_153_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 56036 riscvConfig.encode Initial153.lines [] true = (Reencode0_153.lines, 57480, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_153_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
