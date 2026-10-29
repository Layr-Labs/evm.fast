import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_367
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_367_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 308140 riscvConfig.encode Reencode0_367.lines [] true = (Reencode1_367.lines, 311924, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_367_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
