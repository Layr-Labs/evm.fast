import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_169
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_169_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 100376 riscvConfig.encode Initial169.lines [] true = (Reencode0_169.lines, 101004, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_169_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
