import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_420
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_420_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 342228 riscvConfig.encode Reencode0_420.lines [] true = (Reencode1_420.lines, 343256, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_420_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
