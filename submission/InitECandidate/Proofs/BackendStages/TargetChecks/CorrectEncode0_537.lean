import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_537
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_537_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 439388 riscvConfig.encode Initial537.lines [] true = (Reencode0_537.lines, 439896, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_537_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
