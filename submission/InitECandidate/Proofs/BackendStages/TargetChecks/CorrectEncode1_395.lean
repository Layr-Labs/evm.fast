import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_395
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_395_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 329184 riscvConfig.encode Reencode0_395.lines [] true = (Reencode1_395.lines, 329512, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_395_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
