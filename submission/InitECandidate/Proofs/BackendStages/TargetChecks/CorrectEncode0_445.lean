import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_445
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_445_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 359152 riscvConfig.encode Initial445.lines [] true = (Reencode0_445.lines, 359520, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_445_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
