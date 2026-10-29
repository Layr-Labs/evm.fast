import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_225
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_225_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 144904 riscvConfig.encode Initial225.lines [] true = (Reencode0_225.lines, 153112, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_225_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
