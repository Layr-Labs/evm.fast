import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_439
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_439_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 355400 riscvConfig.encode Initial439.lines [] true = (Reencode0_439.lines, 356644, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_439_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
