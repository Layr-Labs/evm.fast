import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_415
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_415_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 340380 riscvConfig.encode Reencode0_415.lines [] true = (Reencode1_415.lines, 340932, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_415_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
