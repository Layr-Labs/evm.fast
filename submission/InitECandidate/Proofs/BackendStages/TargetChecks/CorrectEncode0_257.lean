import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_257
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_257
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_257_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 206604 riscvConfig.encode Initial257.lines [] true = (Reencode0_257.lines, 207764, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_257_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
