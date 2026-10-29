import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_569
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_569_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 468952 riscvConfig.encode Initial569.lines [] true = (Reencode0_569.lines, 471312, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_569_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
