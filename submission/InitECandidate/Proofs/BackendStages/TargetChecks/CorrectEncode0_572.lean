import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_572
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_572_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 473356 riscvConfig.encode Initial572.lines [] true = (Reencode0_572.lines, 473392, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_572_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
