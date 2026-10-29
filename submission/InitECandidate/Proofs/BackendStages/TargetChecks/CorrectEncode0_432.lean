import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_432
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_432_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 351164 riscvConfig.encode Initial432.lines [] true = (Reencode0_432.lines, 351632, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_432_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
