import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_297
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_297_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 251780 riscvConfig.encode Initial297.lines [] true = (Reencode0_297.lines, 252064, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_297_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
