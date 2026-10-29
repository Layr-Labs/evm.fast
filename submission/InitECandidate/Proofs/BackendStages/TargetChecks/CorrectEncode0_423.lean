import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_423
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_423_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 344580 riscvConfig.encode Initial423.lines [] true = (Reencode0_423.lines, 345056, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_423_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
