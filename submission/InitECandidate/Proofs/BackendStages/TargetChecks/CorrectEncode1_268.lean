import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_268
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_268_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 223248 riscvConfig.encode Reencode0_268.lines [] true = (Reencode1_268.lines, 223652, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_268_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
