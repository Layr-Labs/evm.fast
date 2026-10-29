import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_521
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_521_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 424576 riscvConfig.encode Initial521.lines [] true = (Reencode0_521.lines, 425620, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_521_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
