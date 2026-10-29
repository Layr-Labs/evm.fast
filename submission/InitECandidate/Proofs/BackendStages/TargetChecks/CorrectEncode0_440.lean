import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_440
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_440_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 356644 riscvConfig.encode Initial440.lines [] true = (Reencode0_440.lines, 356980, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_440_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
