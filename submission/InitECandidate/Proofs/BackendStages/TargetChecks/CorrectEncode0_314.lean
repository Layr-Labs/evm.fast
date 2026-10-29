import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_314
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_314_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 265536 riscvConfig.encode Initial314.lines [] true = (Reencode0_314.lines, 266624, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_314_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
