import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_465
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_465_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 391400 riscvConfig.encode Reencode0_465.lines [] true = (Reencode1_465.lines, 391572, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_465_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
