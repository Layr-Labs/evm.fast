import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_221
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_221_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 133648 riscvConfig.encode Reencode0_221.lines [] true = (Reencode1_221.lines, 133736, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_221_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
