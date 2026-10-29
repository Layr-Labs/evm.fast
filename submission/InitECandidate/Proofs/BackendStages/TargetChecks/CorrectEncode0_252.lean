import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_252
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_252
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_252_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 197652 riscvConfig.encode Initial252.lines [] true = (Reencode0_252.lines, 198144, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_252_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
