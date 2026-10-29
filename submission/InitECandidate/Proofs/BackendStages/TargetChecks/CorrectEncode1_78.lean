import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_78
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_78_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 7508 riscvConfig.encode Reencode0_78.lines [] true = (Reencode1_78.lines, 7860, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_78_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
