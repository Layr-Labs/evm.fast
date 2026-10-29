import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_255
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_255_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 202368 riscvConfig.encode Reencode0_255.lines [] true = (Reencode1_255.lines, 202920, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_255_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
