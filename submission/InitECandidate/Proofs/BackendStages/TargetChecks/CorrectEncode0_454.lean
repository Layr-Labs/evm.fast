import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_454
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_454_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 365880 riscvConfig.encode Initial454.lines [] true = (Reencode0_454.lines, 369760, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_454_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
