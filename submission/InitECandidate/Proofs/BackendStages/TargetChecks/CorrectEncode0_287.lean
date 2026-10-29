import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_287
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_287_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 247380 riscvConfig.encode Initial287.lines [] true = (Reencode0_287.lines, 248432, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_287_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
