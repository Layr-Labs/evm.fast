import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_137
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_137_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 29528 riscvConfig.encode Reencode0_137.lines [] true = (Reencode1_137.lines, 29740, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_137_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
