import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_210
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_210_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 127328 riscvConfig.encode Initial210.lines [] true = (Reencode0_210.lines, 131032, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_210_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
