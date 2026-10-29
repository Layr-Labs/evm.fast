import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_102
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_102_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 12340 riscvConfig.encode Initial102.lines [] true = (Reencode0_102.lines, 12388, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_102_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
