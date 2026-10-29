import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_397
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_397
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_397_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 329708 riscvConfig.encode Initial397.lines [] true = (Reencode0_397.lines, 330476, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_397_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
