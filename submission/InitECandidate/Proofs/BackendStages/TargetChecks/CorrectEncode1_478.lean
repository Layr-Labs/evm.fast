import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_478
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_478_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 394292 riscvConfig.encode Reencode0_478.lines [] true = (Reencode1_478.lines, 394640, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_478_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
