import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_275
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_275_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 230004 riscvConfig.encode Initial275.lines [] true = (Reencode0_275.lines, 230812, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_275_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
