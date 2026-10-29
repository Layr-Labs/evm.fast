import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_578
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_578_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 477872 riscvConfig.encode Initial578.lines [] true = (Reencode0_578.lines, 478404, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_578_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
