import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_361
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_361_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 302504 riscvConfig.encode Reencode0_361.lines [] true = (Reencode1_361.lines, 304220, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_361_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
