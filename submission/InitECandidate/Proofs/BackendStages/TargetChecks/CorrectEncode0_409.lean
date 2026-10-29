import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_409
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_409_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 336940 riscvConfig.encode Initial409.lines [] true = (Reencode0_409.lines, 337296, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_409_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
