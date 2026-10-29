import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_347
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_347_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300636 riscvConfig.encode Initial347.lines [] true = (Reencode0_347.lines, 300652, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_347_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
