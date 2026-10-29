import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_168
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_168_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 99904 riscvConfig.encode Initial168.lines [] true = (Reencode0_168.lines, 100376, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_168_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
