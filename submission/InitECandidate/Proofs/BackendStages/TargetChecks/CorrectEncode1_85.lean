import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_85
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_85_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 9612 riscvConfig.encode Reencode0_85.lines [] true = (Reencode1_85.lines, 9764, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_85_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
