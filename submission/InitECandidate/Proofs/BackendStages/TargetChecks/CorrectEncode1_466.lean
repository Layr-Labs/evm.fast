import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_466
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_466_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 391572 riscvConfig.encode Reencode0_466.lines [] true = (Reencode1_466.lines, 392084, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_466_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
