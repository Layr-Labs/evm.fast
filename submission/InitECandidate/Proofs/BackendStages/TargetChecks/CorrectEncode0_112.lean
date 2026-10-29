import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_112
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_112_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 13640 riscvConfig.encode Initial112.lines [] true = (Reencode0_112.lines, 13668, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_112_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
