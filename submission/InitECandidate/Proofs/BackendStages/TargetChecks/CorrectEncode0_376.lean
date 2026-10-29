import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_376
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_376_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 312860 riscvConfig.encode Initial376.lines [] true = (Reencode0_376.lines, 312884, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_376_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
