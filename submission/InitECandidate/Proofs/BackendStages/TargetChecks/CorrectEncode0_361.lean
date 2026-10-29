import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_361
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_361_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 302504 riscvConfig.encode Initial361.lines [] true = (Reencode0_361.lines, 304220, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_361_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
