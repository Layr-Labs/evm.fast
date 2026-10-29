import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_579
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_579_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 478404 riscvConfig.encode Initial579.lines [] true = (Reencode0_579.lines, 478936, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_579_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
