import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_89
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_89
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_89_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 10192 riscvConfig.encode Initial89.lines [] true = (Reencode0_89.lines, 10700, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_89_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
