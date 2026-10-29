import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_282
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_282_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 241388 riscvConfig.encode Initial282.lines [] true = (Reencode0_282.lines, 241672, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_282_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
