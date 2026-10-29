import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_305
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_305
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_305_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 259788 riscvConfig.encode Initial305.lines [] true = (Reencode0_305.lines, 260792, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_305_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
