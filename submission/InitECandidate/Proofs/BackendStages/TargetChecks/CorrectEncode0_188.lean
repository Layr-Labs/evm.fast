import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_188
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_188_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 106868 riscvConfig.encode Initial188.lines [] true = (Reencode0_188.lines, 107144, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_188_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
