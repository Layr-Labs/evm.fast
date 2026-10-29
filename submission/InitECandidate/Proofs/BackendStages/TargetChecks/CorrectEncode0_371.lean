import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_371
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_371_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 312740 riscvConfig.encode Initial371.lines [] true = (Reencode0_371.lines, 312764, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_371_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
