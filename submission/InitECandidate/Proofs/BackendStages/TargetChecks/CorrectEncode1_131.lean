import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_131
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_131_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 26200 riscvConfig.encode Reencode0_131.lines [] true = (Reencode1_131.lines, 26380, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_131_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
