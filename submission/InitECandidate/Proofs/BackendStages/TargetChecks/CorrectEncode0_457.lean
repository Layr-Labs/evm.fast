import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_457
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_457_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 370224 riscvConfig.encode Initial457.lines [] true = (Reencode0_457.lines, 373704, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_457_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
