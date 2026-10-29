import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_197
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_197_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 111780 riscvConfig.encode Initial197.lines [] true = (Reencode0_197.lines, 111892, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_197_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
