import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_480
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_480_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 395124 riscvConfig.encode Initial480.lines [] true = (Reencode0_480.lines, 396576, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_480_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
