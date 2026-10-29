import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_330
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_330
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_330_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 281716 riscvConfig.encode Initial330.lines [] true = (Reencode0_330.lines, 282236, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_330_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
