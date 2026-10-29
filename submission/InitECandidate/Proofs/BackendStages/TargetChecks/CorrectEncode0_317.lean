import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_317
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_317_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 270176 riscvConfig.encode Initial317.lines [] true = (Reencode0_317.lines, 270708, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_317_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
