import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_320
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_320_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 273768 riscvConfig.encode Initial320.lines [] true = (Reencode0_320.lines, 274360, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_320_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
