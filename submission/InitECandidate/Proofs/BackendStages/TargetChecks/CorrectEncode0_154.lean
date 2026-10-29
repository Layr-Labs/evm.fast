import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_154
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_154_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 57480 riscvConfig.encode Initial154.lines [] true = (Reencode0_154.lines, 87396, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_154_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
