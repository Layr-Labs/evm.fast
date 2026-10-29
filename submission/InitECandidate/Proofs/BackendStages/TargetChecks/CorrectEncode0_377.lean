import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_377
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_377_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 312884 riscvConfig.encode Initial377.lines [] true = (Reencode0_377.lines, 313744, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_377_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
