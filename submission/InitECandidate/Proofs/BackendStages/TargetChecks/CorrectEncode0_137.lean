import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_137
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_137_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 29528 riscvConfig.encode Initial137.lines [] true = (Reencode0_137.lines, 29740, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_137_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
