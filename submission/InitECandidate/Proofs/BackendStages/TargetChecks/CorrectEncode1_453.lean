import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_453
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_453_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 365152 riscvConfig.encode Reencode0_453.lines [] true = (Reencode1_453.lines, 365880, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_453_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
