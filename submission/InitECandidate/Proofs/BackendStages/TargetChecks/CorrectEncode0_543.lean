import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_543
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_543_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 441412 riscvConfig.encode Initial543.lines [] true = (Reencode0_543.lines, 442116, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_543_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
