import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_253
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_253_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 198144 riscvConfig.encode Initial253.lines [] true = (Reencode0_253.lines, 200568, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_253_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
