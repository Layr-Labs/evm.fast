import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_152
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_152_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 55752 riscvConfig.encode Initial152.lines [] true = (Reencode0_152.lines, 56036, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_152_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
