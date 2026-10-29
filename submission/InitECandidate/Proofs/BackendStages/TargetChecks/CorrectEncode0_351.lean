import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_351
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_351
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_351_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300732 riscvConfig.encode Initial351.lines [] true = (Reencode0_351.lines, 300756, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_351_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
