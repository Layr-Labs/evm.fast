import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_364
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_364
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_364_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 305552 riscvConfig.encode Initial364.lines [] true = (Reencode0_364.lines, 306004, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_364_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
