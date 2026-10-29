import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_334
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_334
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_334_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 287184 riscvConfig.encode Initial334.lines [] true = (Reencode0_334.lines, 288732, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_334_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
