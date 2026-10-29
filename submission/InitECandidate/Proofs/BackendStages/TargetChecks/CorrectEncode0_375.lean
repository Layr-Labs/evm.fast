import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_375
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_375_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 312836 riscvConfig.encode Initial375.lines [] true = (Reencode0_375.lines, 312860, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_375_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
