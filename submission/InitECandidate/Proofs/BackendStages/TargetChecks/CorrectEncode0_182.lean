import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_182
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_182_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 104068 riscvConfig.encode Initial182.lines [] true = (Reencode0_182.lines, 104872, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_182_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
