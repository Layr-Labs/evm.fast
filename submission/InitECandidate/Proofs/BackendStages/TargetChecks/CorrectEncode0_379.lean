import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_379
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_379_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 317408 riscvConfig.encode Initial379.lines [] true = (Reencode0_379.lines, 318232, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_379_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
