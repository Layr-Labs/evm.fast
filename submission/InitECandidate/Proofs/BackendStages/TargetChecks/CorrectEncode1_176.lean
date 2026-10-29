import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_176
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_176_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 102720 riscvConfig.encode Reencode0_176.lines [] true = (Reencode1_176.lines, 103144, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_176_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
