import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_387
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_387_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 324604 riscvConfig.encode Initial387.lines [] true = (Reencode0_387.lines, 326040, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_387_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
