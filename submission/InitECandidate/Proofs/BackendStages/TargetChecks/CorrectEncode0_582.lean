import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_582
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_582_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 480000 riscvConfig.encode Initial582.lines [] true = (Reencode0_582.lines, 480660, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_582_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
