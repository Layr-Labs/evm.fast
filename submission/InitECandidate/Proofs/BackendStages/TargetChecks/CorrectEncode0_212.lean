import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_212
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_212_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 131344 riscvConfig.encode Initial212.lines [] true = (Reencode0_212.lines, 132008, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_212_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
