import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_283
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_283
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_283_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 241672 riscvConfig.encode Initial283.lines [] true = (Reencode0_283.lines, 244720, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_283_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
