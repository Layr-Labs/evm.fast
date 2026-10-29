import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_472
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_472
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_472_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 392952 riscvConfig.encode Initial472.lines [] true = (Reencode0_472.lines, 393240, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_472_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
