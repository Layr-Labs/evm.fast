import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_435
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_435_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 353476 riscvConfig.encode Reencode0_435.lines [] true = (Reencode1_435.lines, 353860, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_435_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
