import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_115
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_115_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 13724 riscvConfig.encode Initial115.lines [] true = (Reencode0_115.lines, 13844, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_115_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
