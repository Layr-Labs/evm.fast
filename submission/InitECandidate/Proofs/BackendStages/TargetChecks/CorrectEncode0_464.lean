import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_464
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_464_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 391188 riscvConfig.encode Initial464.lines [] true = (Reencode0_464.lines, 391400, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_464_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
