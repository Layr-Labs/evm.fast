import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_467
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_467
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_467_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 392084 riscvConfig.encode Reencode0_467.lines [] true = (Reencode1_467.lines, 392260, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_467_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
