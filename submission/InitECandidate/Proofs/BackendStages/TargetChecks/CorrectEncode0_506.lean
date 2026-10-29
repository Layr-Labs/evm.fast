import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_506
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_506_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 411440 riscvConfig.encode Initial506.lines [] true = (Reencode0_506.lines, 412448, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_506_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
