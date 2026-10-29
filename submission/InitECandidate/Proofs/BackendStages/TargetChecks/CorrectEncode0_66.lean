import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_66
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_66_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 5244 riscvConfig.encode Initial66.lines [] true = (Reencode0_66.lines, 5432, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_66_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
