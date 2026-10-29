import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_270
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_270_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 223980 riscvConfig.encode Reencode0_270.lines [] true = (Reencode1_270.lines, 224260, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_270_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
