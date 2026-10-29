import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_106
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_106_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 12776 riscvConfig.encode Initial106.lines [] true = (Reencode0_106.lines, 12908, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_106_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
