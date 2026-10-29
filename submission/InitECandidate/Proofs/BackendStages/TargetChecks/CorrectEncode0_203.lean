import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_203
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_203_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 115716 riscvConfig.encode Initial203.lines [] true = (Reencode0_203.lines, 116304, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_203_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
