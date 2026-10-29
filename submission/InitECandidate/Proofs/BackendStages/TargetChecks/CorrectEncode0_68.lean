import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_68
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_68
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_68_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 5536 riscvConfig.encode Initial68.lines [] true = (Reencode0_68.lines, 6020, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_68_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
