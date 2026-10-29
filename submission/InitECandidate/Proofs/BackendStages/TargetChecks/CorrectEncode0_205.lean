import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_205
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_205_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 116592 riscvConfig.encode Initial205.lines [] true = (Reencode0_205.lines, 116908, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_205_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
