import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_337
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_337_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 289276 riscvConfig.encode Initial337.lines [] true = (Reencode0_337.lines, 289576, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_337_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
