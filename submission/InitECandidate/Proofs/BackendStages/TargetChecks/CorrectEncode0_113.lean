import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_113
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_113_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 13668 riscvConfig.encode Initial113.lines [] true = (Reencode0_113.lines, 13696, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_113_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
