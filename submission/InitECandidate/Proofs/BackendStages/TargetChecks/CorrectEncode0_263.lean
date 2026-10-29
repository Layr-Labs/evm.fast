import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_263
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_263_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 216648 riscvConfig.encode Initial263.lines [] true = (Reencode0_263.lines, 217816, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_263_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
