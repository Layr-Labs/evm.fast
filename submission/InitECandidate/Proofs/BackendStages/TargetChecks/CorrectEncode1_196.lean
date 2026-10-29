import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_196
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_196
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_196_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 111764 riscvConfig.encode Reencode0_196.lines [] true = (Reencode1_196.lines, 111780, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_196_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
