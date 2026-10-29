import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_245
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_245
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_245_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 191296 riscvConfig.encode Reencode0_245.lines [] true = (Reencode1_245.lines, 191316, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_245_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
