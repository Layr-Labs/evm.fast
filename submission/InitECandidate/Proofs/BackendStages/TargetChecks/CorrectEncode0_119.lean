import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_119
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_119_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 14240 riscvConfig.encode Initial119.lines [] true = (Reencode0_119.lines, 14492, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_119_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
