import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_543
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_543_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 441412 riscvConfig.encode Reencode0_543.lines [] true = (Reencode1_543.lines, 442116, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_543_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
