import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_81
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_81_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 9196 riscvConfig.encode Reencode0_81.lines [] true = (Reencode1_81.lines, 9260, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_81_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
