import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_149
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_149_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 36884 riscvConfig.encode Initial149.lines [] true = (Reencode0_149.lines, 37224, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_149_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
