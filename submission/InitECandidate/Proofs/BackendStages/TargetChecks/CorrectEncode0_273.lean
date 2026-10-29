import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_273
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_273_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 224836 riscvConfig.encode Initial273.lines [] true = (Reencode0_273.lines, 225056, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_273_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
