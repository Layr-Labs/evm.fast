import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_163
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_163_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 95656 riscvConfig.encode Initial163.lines [] true = (Reencode0_163.lines, 97928, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_163_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
