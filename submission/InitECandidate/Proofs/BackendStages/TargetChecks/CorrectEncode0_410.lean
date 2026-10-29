import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_410
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_410_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 337296 riscvConfig.encode Initial410.lines [] true = (Reencode0_410.lines, 338328, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_410_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
