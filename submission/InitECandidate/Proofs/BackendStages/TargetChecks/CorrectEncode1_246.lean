import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_246
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_246_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 191316 riscvConfig.encode Reencode0_246.lines [] true = (Reencode1_246.lines, 191364, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_246_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
