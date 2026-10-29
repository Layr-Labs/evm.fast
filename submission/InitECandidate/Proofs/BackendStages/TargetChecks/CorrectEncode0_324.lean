import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_324
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_324_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 277664 riscvConfig.encode Initial324.lines [] true = (Reencode0_324.lines, 279604, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_324_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
