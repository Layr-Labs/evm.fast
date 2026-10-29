import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_483
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_483_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 397888 riscvConfig.encode Reencode0_483.lines [] true = (Reencode1_483.lines, 398484, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_483_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
