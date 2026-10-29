import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_542
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_542_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 440680 riscvConfig.encode Initial542.lines [] true = (Reencode0_542.lines, 441412, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_542_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
