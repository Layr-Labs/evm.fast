import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_124
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_124_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 20724 riscvConfig.encode Reencode0_124.lines [] true = (Reencode1_124.lines, 20928, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_124_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
