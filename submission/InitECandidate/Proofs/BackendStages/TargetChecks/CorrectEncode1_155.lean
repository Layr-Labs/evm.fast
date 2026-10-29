import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_155
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_155
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_155_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 87396 riscvConfig.encode Reencode0_155.lines [] true = (Reencode1_155.lines, 88632, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_155_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
