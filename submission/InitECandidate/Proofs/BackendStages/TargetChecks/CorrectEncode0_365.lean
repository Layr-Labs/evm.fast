import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_365
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_365_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 306004 riscvConfig.encode Initial365.lines [] true = (Reencode0_365.lines, 307760, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_365_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
