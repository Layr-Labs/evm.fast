import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_526
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_526_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 429456 riscvConfig.encode Reencode0_526.lines [] true = (Reencode1_526.lines, 430496, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_526_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
