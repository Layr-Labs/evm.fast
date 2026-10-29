import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_0
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_0_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 0 riscvConfig.encode Initial0.lines [] true = (Reencode0_0.lines, 780, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_0_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
